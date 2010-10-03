# Adapted from MC (Midnight Commander) hack.
HELLOGEN_PWD_FILE="${TMPDIR-/tmp}/hellogen.pwd.$$"
hellogen -P "$HELLOGEN_PWD_FILE" "$@"

if test -r "$HELLOGEN_PWD_FILE"; then
	HELLOGEN_PWD="`cat $HELLOGEN_PWD_FILE`"
	if test -n "$HELLOGEN_PWD" && test -d "$HELLOGEN_PWD"; then
		cd "$HELLOGEN_PWD"
	fi
	unset HELLOGEN_PWD
fi

rm -f "$HELLOGEN_PWD_FILE"
unset HELLOGEN_PWD_FILE
