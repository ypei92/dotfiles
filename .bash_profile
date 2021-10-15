#homebrew=/usr/local/bin:/usr/local/sbin
homebrew_sbin=/usr/local/sbin
export PATH="$homebrew_sbin:$PATH"

#Color
export CLICOLOR=1
export LSCOLORS=exfxcxdxBxegedabagaCaD

for file in ~/{.aliases,.bash-git-prompt/gitprompt.sh};
do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

