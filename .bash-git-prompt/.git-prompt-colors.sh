# This is the custom theme template for gitprompt.sh

# These are the defaults from the "Default" theme
# You just need to override what you want to have changed
override_git_prompt_colors() {
    GIT_PROMPT_THEME_NAME="Custom"

    if tput setaf 1 &> /dev/null; then
        tput sgr0; # reset colors
        bold=$(tput bold);
        reset=$(tput sgr0);
        black=$(tput setaf 0);
        blue=$(tput setaf 33);
        cyan=$(tput setaf 37);
        green=$(tput setaf 64);
        orange=$(tput setaf 166);
        purple=$(tput setaf 125);
        red=$(tput setaf 124);
        violet=$(tput setaf 61);
        white=$(tput setaf 15);
        yellow=$(tput setaf 136);
    else
        bold='';
        reset="\e[0m";
        black="\e[30m";
        blue="\e[34m";
        cyan="\e[36m";
        green="\e[32m";
        orange="\e[33m";
        purple="\e[35m";
        red="\e[31m";
        violet="\e[35m";
        white="\e[37m";
        yellow="\e[33m";
    fi

    # Highlight the user name when logged in as root.
    if [[ "${USER}" == "root" ]]; then
        userStyle="${red}";
    else
        userStyle="${orange}";
    fi;

    # Highlight the hostname when connected via SSH.
    if [[ "${SSH_TTY}" ]]; then
        hostStyle="${bold}${red}";
    else
        hostStyle="${bold}${yellow}";
    fi;

    Time12a="[\$(date +%H:%M)]"
    PathShort="\w";

    # Set the terminal title to the current working directory.
    USER_PREFIX+="${cyan}${Time12a} "
    USER_PREFIX+="\[${userStyle}\]\u";   # username
    USER_PREFIX+="\[${white}\]@";
    USER_PREFIX+="\[${hostStyle}\]\h";  # host
    USER_PREFIX+="\[${white}\]: ";

    ## These are the color definitions used by gitprompt.sh
    GIT_PROMPT_PREFIX="["                 # start of the git info string
    GIT_PROMPT_SUFFIX="${ResetColor}]"    # the end of the git info string
    GIT_PROMPT_SEPARATOR="]["             # separates each item

    GIT_PROMPT_BRANCH="${bold}${blue}"    # the git branch that is active in the current directory
    GIT_PROMPT_MASTER_BRANCH="${GIT_PROMPT_BRANCH}"
    GIT_PROMPT_STAGED="${Red}●"           # the number of staged files/directories
    GIT_PROMPT_CONFLICTS="${Red}✖"        # the number of files in conflict
    GIT_PROMPT_CHANGED="${Blue}✚"         # the number of changed files
    GIT_PROMPT_UNTRACKED="${Cyan}…"       # the number of untracked files/dir
    GIT_PROMPT_STASHED="${BoldBlue}⚑"     # the number of stashed files/dir
    GIT_PROMPT_CLEAN="${bold}${green}✔"   # indicating a "clean" repo
    GIT_PROMPT_REMOTE=" "               # the remote branch name and the
                                        # symbols for ahead and behind

    ## indicator if the last command returned with an exit code of 0 or not
    GIT_PROMPT_COMMAND_OK=""
    GIT_PROMPT_COMMAND_FAIL=""
    # GIT_PROMPT_COMMAND_FAIL="${Red}✘-_LAST_COMMAND_STATE_ "

    ## Omit the upstream name for now
    GIT_PROMPT_UPSTREAM=""

    GIT_PROMPT_START_USER="_LAST_COMMAND_INDICATOR_${USER_PREFIX}${Green}${PathShort}${ResetColor}"
    GIT_PROMPT_START_ROOT="_LAST_COMMAND_INDICATOR_${GIT_PROMPT_START_USER}"

    ## n versions ahead or behind the origin
    GIT_PROMPT_SYMBOLS_AHEAD="${bold}${green}↑"
    GIT_PROMPT_SYMBOLS_BEHIND="${bold}${red}↓"
    GIT_PROMPT_SYMBOLS_NO_REMOTE_TRACKING="${bold}${green}↑0"
}

reload_git_prompt_colors "Custom"
