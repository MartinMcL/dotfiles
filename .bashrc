# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo "[${BRANCH}${STAT}]"
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

export PS1="[\[\e[33m\]\A\[\e[m\]] \[\e[36m\]\W\[\e[m\] \[\e[32m\]\`parse_git_branch\`\[\e[m\] \n\\$ "
alias frank="cd ~/dev/frankli/web"
export EDITOR='vim'
export VISUAL='vim'
alias frankli-up="cd ~/dev/frankli/web/backend && mvn spring-boot:run"
alias frankli-clean="cd ~/dev/frankli/web && mvn clean install -DskipTests -T4"
alias frankli-clean-test="cd ~/dev/frankli/web && mvn clean install -T4"
alias frankli-mock="cd ~/dev/frankli/web/frontend/src/main/mockServer && npm start"
alias frankli-git="cd ~/dev/frankli/web/ && git pull"
alias frankli-front="cd ~/dev/frankli/web/frontend/src/main/frontend && npm start"
PATH=$PATH:/opt/ngrok:~/.local/bin
export PATH
alias ytdl='youtube-dl'
alias ytmp3='youtube-dl --extract-audio --audio-format mp3 --output "%(title)s.%(ext)s"'
alias c='clear'
alias :q='exit'
alias gush='git push'
alias gull='git pull'
alias geset='git reset --hard'
