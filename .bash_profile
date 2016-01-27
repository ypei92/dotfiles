PATH=$PATH:$HOME/.pkg_uninstaller
export PATH="/usr/local/sbin:$PATH"

#Color
export CLICOLOR=1
export LSCOLORS=exfxbEaEBxxEhEhBaDaCaD

#JAVA_HOME
JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export JAVA_HOME

for file in ~/.{bash_prompt,aliase}; 
do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;