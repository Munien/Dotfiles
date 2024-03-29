echo "Choose one of the supported distros/os"
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
    sudo apt update && sudo apt install fish
    ;;
  3)
    pacman -S fish
    ;;
  4)
    brew install fish
    ;;
esac

curl -L https://get.oh-my.fish | fish
