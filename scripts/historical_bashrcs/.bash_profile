# alias + prompt
for file in ~/{.bash-git-prompt/gitprompt.sh,.aliases,.ls_colors};
do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# truecolor support if the terminal supports truecolor (24-bit).
export COLORTERM=truecolor

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
