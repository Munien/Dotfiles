# Install fish to replace bash shell
sh ./install-fish.sh


# Install starship
paru -S starship

# Install fisher for plugin management for fish shell
curl -L https://get.oh-my.fish

# Install the z plugin for quick directory hopping
fish -c 'fisher install jethrokuan/z'
