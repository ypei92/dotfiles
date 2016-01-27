umask 077

for file in ~/.{bash_prompt,aliases}; 
do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

eval `dircolors ~/.dir_colors`
# export CLICOLOR=1
# export LSCOLORS=exfxbEaEBxxEhEhBaDaCaD
