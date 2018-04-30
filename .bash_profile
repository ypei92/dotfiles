PATH=$PATH:$HOME/.pkg_uninstaller
homebrew=/usr/local/bin:/usr/local/sbin
macport=/opt/local/bin:/opt/local/sbin
qtbin=/usr/local/opt/qt5/bin/
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="$homebrew:$qtbin:$macport:$PATH"
export DYLD_LIBRARY_PATH=/Users/francispei/UTCS/plugins/OpenNI-2.2/Samples/Bin:$DYLD_LIBARAY_PATH

#Color
export CLICOLOR=1
export LSCOLORS=exfxbEaEBxxEhEhBaDaCaD

#JAVA_HOME
JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export JAVA_HOME

for file in ~/{.aliases,.bash-git-prompt/gitprompt.sh};
do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
