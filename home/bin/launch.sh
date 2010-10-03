# -----------------------------------------------------------------------------
# Helper functions
# -----------------------------------------------------------------------------
is_serverup()
{
	local host port found

	[ -x /sbin/ifconfig ] || {
		echo >&2 "ifconfig not executable"
		exit 1
	}

	[ -x /usr/bin/nmap ] || {
		echo >&2 "nmap not executable"
		exit 1
	}

	host=${1:-$SERVER}

	# Default to SSH port.
	port=${2:-22}

	[ -n "$host" ] || {
		echo >&2 "no host given"
		exit 1
	}

	found=
	for iface in wlan0 ppp0 eth0; do
		if /sbin/ifconfig $iface 2>/dev/null | grep -q UP; then
			found=$iface
			break
		fi
	done

	if [ -z "$found" ]; then
		exit 11
	fi

	if ! nmap -p $port $host | grep -q "^$port/.* open"; then
		exit 22
	fi
}

is_netup()
{
	local host port max_try try

	max_try=100

	# Google should be a sane default.
	host=${1:-www.google.com}
	port=${2:-80}

	echo -n >&2 "Checking $host:$port if network is up "
	try=$max_try
	while !is_serverup $host $port; do
		echo -n >&2 .
		if [ $try -eq 0 ]; then
			echo >&2 " FAILED"
			echo >&2 \
	"Max attempt has been reached while waiting for the network; aborting"
			exit 1
		fi
		sleep 2
		try=$(($try - 1))
	done
	echo >&2 "OK"
}


# -----------------------------------------------------------------------------
# Launch preps
# -----------------------------------------------------------------------------
launch_prep_elog()
{
	local prog port host
	CMD=

	port=8080

	prog=
	for p in $VBROWSER w3m $BROWSER links lynx; do
		if which $p >/dev/null; then
			prog=$p
			break
		fi
	done

	[ -n "$prog" ] || {
		echo >&2 "no text browser found"
		exit 1
	}

	host=
	for h in $SERVER localhost oxygen hydrogen carbon; do
		if is_serverup $h $port; then
			host=$h
			break
		fi
	done

	[ -n "$host" ] || {
		echo >&2 "no ELOG host available"
		exit 1
	}

	CMD="$prog http://$host:$port/kirkambar/?mode=threaded"
}

launch_prep_monitor()
{
	local prog targets files
	CMD=

	# Prefered program.
	prog=multitail
	#prog=ccze

	# Files to be monitored
	targets="syslog cups/access_log cups/error_log lpr.log ppp.log \
	         apache/error.log apache/access.log apache2/error.log \
	         apache2/access.log kern.log auth.log snort/alert"

	if ! which $prog; then
		prog=
	fi
	       
	files=
	for f in $targets; do
		if ! echo "$f" | grep -q '^/'; then
			f=/var/log/$f
		fi

		if [ -r $f ]; then
			files="$files $f"
		fi
	done
	      
	case "$prog" in
	ccze)
		CMD=`echo $files | awk '{
			for (i = 1; i < NF; i++)
					print "tail -f "$i" && "
				print "tail -f "$NF
			}'`
		CMD="( $CMD ) | ccze -A -p syslog"
		;;
	multitail)
		CMD=`echo $files | awk '{
			print $1
			for (i = 2; i <= NF; i++)
				print "-I "$i
		}'`
		# Workaround to prevent mt from exiting
		# before resizing the xterm.
		CMD="sleep 10; multitail -Cs $CMD"
		;;
	esac

	if [ -z "$CMD" ] && [ -r /var/log/syslog ]; then
		# Good than nothing.
		CMD="tail -f /var/log/syslog"
	fi
}

launch_prep_offlineimap()
{
	local max_try use_ssh_agent
	CMD=

	[ -x /usr/bin/offlineimap ] || {
		echo >&2 "offlineimap not executable"
		exit 1
	}

	[ -f $HOME/.offlineimaprc ] || {
		echo >&2 "no config for offlineimap exists"
		exit 1
	}

	# Max attempts while waiting for the network up.
	max_try=15
	use_ssh_agent=no

	# Check my current mail server.
	is_netup 193.140.28.3 22

	# Reached here, start the program.
	if [ "$use_ssh_agent" = yes ]; then
		ssh-add
	fi
	CMD="offlineimap"
}

launch_prep_player()
{
	local prog args playlist directory
	CMD=

	playlist=$HOME/music/list.m3u

	prog=
	for p in $PLAYER cplay mp3blaster mpg321; do
		if which $p >/dev/null; then
			prog=$p
			break
		fi
	done

	[ -n "$prog" ] || {
		echo >&2 "no player found"
		exit 1
	}

	case "$prog" in
	cplay)      args= ;;
	mpg321)     args="--list" ;;
	mp3blaster) args="--list" ;;
	esac
		
	directory=`dirname $playlist`
	if [ -d "$directory" ]; then
		cd $directory
	fi

	if [ -f $playlist ]; then
		CMD="$prog $args $playlist"
	else
		if [ "$prog" = "mpg321" ]; then
			echo >&2 "Create the '$playlist' playlist first!"
			exit 1
		fi
	fi
}

launch_prep_mutt()
{
	CMD=

	if [ -d ~/Mail ] && [ -x /usr/bin/mutt ] && [ -f ~/.muttrc ]; then
		CMD=mutt
	fi
}

launch_prep_mc()
{
	# UTF-8 support added to mc (4.6.1-2).
#        LOCALE_BEFORE_HACKED=$LANG
#        LC_ALL=C
#        export LOCALE_BEFORE_HACKED LC_ALL

	CMD="mc"
}

launch_prep_edepot()
{
	CMD="edepot"
}

# XXX My Add
launch_prep_vim()
{
	CMD="vim"
}
