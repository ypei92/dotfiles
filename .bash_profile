PATH=$PATH:$HOME/.pkg_uninstaller

#JAVA_HOME
JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export JAVA_HOME

for file in ~/.{bash_prompt,aliases}; 
do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

export CLICOLOR=1
export LSCOLORS=exfxbEaEBxxEhEhBaDaCaD

export PATH="/usr/local/sbin:$PATH"
