starship init fish | source

source /opt/asdf-vm/asdf.fish

set PATH /usr/local/m/current/bin $PATH
set PATH /usr/lib/imagemagick6/bin $PATH
set PATH /home/munien/Code/utils/helpers/github $PATH

set PKG_CONFIG_PATH /usr/lib/imagemagick6/pkgconfig $PKG_CONFIG_PATH
set LDFLAGS -L/usr/lib/imagemagick6/lib $LDFLAGS
set CPPFLAGS -I/usr/lib/imagemagick6/include $CPPFLAGS
set PKG_CONFIG_PATH /usr/lib/imagemagick6/pkgconfig $PKG_CONFIG_PATH

alias setclip "xclip -selection c"
