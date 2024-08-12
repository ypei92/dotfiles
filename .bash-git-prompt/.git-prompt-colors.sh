# This is the custom theme template for gitprompt.sh

override_git_prompt_colors() {
    GIT_PROMPT_THEME_NAME="Custom"

    ## Highlight the user name when logged in as root.
    if [[ "${USER}" == "root" ]]; then
        userStyle="${Red}";
    else
        userStyle="${Blue}";
    fi;

    hostStyle="${Bold}${Green}";
    Time12a="[\$(date +%H:%M)]"
    PathShort="\w";

    ## Set the terminal title to the current working directory.
    USER_PREFIX+="${Cyan}${Time12a} "
    USER_PREFIX+="\[${userStyle}\]\u";        # username
    USER_PREFIX+="\[${White}\]@";
    USER_PREFIX+="\[${hostStyle}\]\h";        # host
    USER_PREFIX+="${Yellow}[${DISTRO_ICON}]"  # distro icon
    USER_PREFIX+="\[${White}\]: ";

    ## These are the color definitions used by gitprompt.sh
    GIT_PROMPT_PREFIX="["                  # start of the git info string
    GIT_PROMPT_SUFFIX="${ResetColor}]"     # the end of the git info string
    GIT_PROMPT_SEPARATOR="]["              # separates each item

    GIT_PROMPT_BRANCH=" ${Bold}${Blue}"  # the git branch that is active
    GIT_PROMPT_MASTER_BRANCH="${GIT_PROMPT_BRANCH}"
    GIT_PROMPT_STAGED="${Red}"           # the number of staged files/directories
    GIT_PROMPT_CONFLICTS="${Red}"        # the number of files in conflict
    GIT_PROMPT_CHANGED="${Blue}󰐕"         # the number of changed files
    GIT_PROMPT_UNTRACKED="${Cyan}…"       # the number of untracked files/dir
    GIT_PROMPT_STASHED="${BoldBlue}"     # the number of stashed files/dir
    GIT_PROMPT_CLEAN="${Bold}${Green}"   # indicating a "clean" repo
    GIT_PROMPT_REMOTE=" "                  # the remote branch name and the
                                           # symbols for ahead and behind

    ## Indicator if the last command returned with an exit code of 0 or not
    GIT_PROMPT_COMMAND_OK="${Bold}${Green}"
    GIT_PROMPT_COMMAND_FAIL="${Bold}${Red}"  # "${Red}✘-_LAST_COMMAND_STATE_ "

    ## Number of versions ahead or behind the origin
    GIT_PROMPT_UPSTREAM=""
    GIT_PROMPT_SYMBOLS_AHEAD="${Bold}${Green}↑"
    GIT_PROMPT_SYMBOLS_BEHIND="${Bold}${Red}↓"
    GIT_PROMPT_SYMBOLS_NO_REMOTE_TRACKING="${Bold}${Green}↑0"

    ## Prompt
    GIT_PROMPT_START_USER="${USER_PREFIX}${Cyan}${PathShort}${ResetColor}"
    GIT_PROMPT_START_ROOT="${GIT_PROMPT_START_USER}"
    GIT_PROMPT_END_USER=" \n_LAST_COMMAND_INDICATOR_ ${ResetColor}"
    GIT_PROMPT_END_ROOT="${GIT_PROMPT_END_USER}"
}

reload_git_prompt_colors "Custom"
