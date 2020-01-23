# ZSH Theme - Preview: http://dl.dropbox.com/u/4109351/pics/gnzh-zsh-theme.png
# Based on bira theme

setopt prompt_subst

() {

local PR_USER PR_USER_OP PR_PROMPT PR_HOST

# Check the UID
if [[ $UID -ne 0 ]]; then # normal user
  PR_USER='%F{blue}%n%f'
  PR_USER_OP='%F{blue}%#%f'
  PR_PROMPT='%F{8}➤ %f'
else # root
  PR_USER='%F{red}%n%f'
  PR_USER_OP='%F{red}%#%f'
  PR_PROMPT='%F{red}➤ %f'
fi

# Check if we are on SSH or not
if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
  PR_HOST='%F{red}%M%f' # SSH
else
  PR_HOST='%F{blue}%M%f' # no SSH
fi

function emo_path() {
  local emo_path=$@
  # echo "${emo_path//\/code/ }"
  echo '$(print -P %~'\
    '| sed -e "s/code\/ruby\/brandslisten\/core/ bl /g" '\
    '| sed -e "s/code\/ruby\/brandslisten\/clients/ bl /g" '\
    '| sed -e "s/build-and-deploy/%F{red} build and deploy %F{blue}/g" '\
    '| sed -e "s/code/ /g")'
}

local return_code="%(?..%F{red}%? ↵%f)"

# === TASKWARRIOR

# add Taskwarrior
# this part is just fun-with-utf8
# https://twitter.com/pjf/status/852466839145795584
# URGENT="2757"
# DUETOMORROW="2690"
# DUETODAY="2691"
# OVERDUE="2639"
# OK="2714"
#
# # shows if any TaskWarrior tasks are in need of attention
# function task_indicator {
#     if [ `task +READY +OVERDUE count` -gt "0" ]  ; then
#         printf "%b" "\u$OVERDUE"
#     elif [ `task +READY +DUETODAY count` -gt "0" ]  ; then
#         printf "%b" "\u$DUETODAY"
#     elif [ `task +READY +DUETomorrow count` -gt "0" ]  ; then
#         printf "%b" "\u$DUETOMORROW"
#     elif [ `task +READY urgency \> 10 count` -gt "0" ]  ; then
#         printf "%b" "\u$URGENT"
#     else
#         printf "%b" "\u$OK"
#     fi
# }
# task=" \$(task_indicator)"

# === /TASKWARRIOR

local user_host="${PR_USER}%F{cyan}@${PR_HOST}"
local current_dir="%F{blue}$(emo_path %~)%f"
# local rvm_ruby=''
# if ${HOME}/.rvm/bin/rvm-prompt &> /dev/null; then # detect user-local rvm installation
#   rvm_ruby='%F{red}‹$(${HOME}/.rvm/bin/rvm-prompt i v g s)›%f'
# elif which rvm-prompt &> /dev/null; then # detect system-wide rvm installation
#   rvm_ruby='%F{red}‹$(rvm-prompt i v g s)›%f'
# elif which rbenv &> /dev/null; then # detect Simple Ruby Version Management
#   rvm_ruby='%F{red}‹$(rbenv version | sed -e "s/ (set.*$//")›%f'
# fi
local git_branch='$(git_prompt_info) %K{red}$(work_in_progress)%k'
local cur_date='%F{blue}$(date +%H:%M:%S)%f'

# Possible colors
# %F{0}╭─%F{1}╭─%F{2}╭─%F{3}╭─%F{4}╭─%F{5}╭─%F{6}╭─%F{7}╭─%F{8}╭─%F{9}╭─%F{10}╭─%F{11}╭─%F{12}╭─%F{13}╭─%F{14}╭─%F{15}╭─
#
# Bold
# %Bsometing%b

PROMPT="
%F{8}╭─%f%F{8}[%f${user_host}%F{8}]-[%f${cur_date}%F{8}]-%f%F{8}｢%f${current_dir}%F{8}｣%f%F{8}${rvm_ruby}${$(dock_status)}${git_branch}
%F{8}╰─%f$PR_PROMPT "
RPROMPT="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="\n%F{8}├─[%f%F{yellow}  "
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{8}]%f\n"

}
