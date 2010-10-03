# ----------------------------------------------------------------------------
# Functions
# ----------------------------------------------------------------------------
_git_import () {
	scm=$1
	url=$2

	[ -n "$scm" ] || {
		echo >&2 "No scm given!"
		return 1
	}

	CMD="git-${scm}import"

	if [ -n "$url" ]; then
		$CMD -v $url && echo $url >.git/url
	else
		[ -f .git/url ] || {
			echo >&2 "No URL given!"
			return 1
		}

		cur=$(git branch | sed -ne 's/^\*\s\+//p')
		rev=$(tail -n 1 .git/svn2git)
		if [ -n "$cur" ] && [ "$cur" != 'origin' ]; then
			git checkout origin && {
				$CMD -v $(cat .git/url)
				git checkout $cur
			}
		else
			$CMD -v $(cat .git/url)
		fi

		# FIXME: this is just a workaround
		if git status | grep -q "nothing to commit" || \
		   [ "$rev" != "$(tail -n 1 .git/svn2git)" ]; then
			git reset --hard
		fi
	fi

}

svng () { _git_import "svn" $@; }
cvsg () { _git_import "cvs" $@; }

yyu () { git fetch && git rebase origin/master; }
yyU () { git pull origin; }

yy () {
	msg="$*"
	git commit -a -m "${msg:-Auto commit.}" &&
	if git remote | grep -q "^origin$"; then
		git push origin
	fi
}


# ----------------------------------------------------------------------------
# Aliases
# ----------------------------------------------------------------------------
alias g='git'; complete -F _git g
alias yya='yyadd'
alias yyb='yybranch'
alias yyc='git checkout'
alias yyi='yyinfo'
alias yyl='yylsbranches'
alias yym='git move'
alias yyp='yypushpull'
alias yyr='yyremove'
alias yys='yystatus'
alias yyv='yyview'
