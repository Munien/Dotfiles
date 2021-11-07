echo "Select your distro/os"
echo "(1) ubuntu"
echo "(2) debian"
echo "(3) arch"
echo "(4) mac"

echo ""
echo -n "Selection: "
read selection

echo $selection

case "$selection" in
  1 | 2)
    sudo apt remove fish
    ;;
  3)
    pacman -R fish
    ;;
  4)
    brew uninstall fish
    ;;
esac
