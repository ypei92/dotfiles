# get distro
if [ "$(uname)" == "Darwin" ]; then
  DISTRO="macOS"
elif [ -f /etc/os-release ]; then
  . /etc/os-release
  DISTRO=$ID
elif [ -f /etc/lsb-release ]; then
  . /etc/lsb-release
  DISTRO=$DISTRIB_ID
else
  DISTRO=$(uname -s)
fi

# Shortcuts
case "$DISTRO" in
  ubuntu)
    DISTRO_ICON=""
    ;;
  debian)
    DISTRO_ICON=""
    ;;
  macOS)
    DISTRO_ICON=""
    ;;
  *)
    DISTRO_ICON=""
    ;;
esac

