if status is-interactive
  starship init fish | source

  source /opt/homebrew/opt/asdf/libexec/asdf.fish

  set PATH /usr/local/m/current/bin $PATH
  set PATH /usr/lib/imagemagick6/bin $PATH
  set PATH /home/munien/Code/utils/helpers/github $PATH
  set LSP_USE_PLISTS true
  set NEOVIDE_FRAMELESS true
  set NEOVIDE_FRAME 'none'

  set PKG_CONFIG_PATH /usr/lib/imagemagick6/pkgconfig $PKG_CONFIG_PATH
  set LDFLAGS -L/usr/lib/imagemagick6/lib $LDFLAGS
  set CPPFLAGS -I/usr/lib/imagemagick6/include $CPPFLAGS
  set PKG_CONFIG_PATH /usr/lib/imagemagick6/pkgconfig $PKG_CONFIG_PATH
  set LDFLAGS -L/usr/local/opt/openssl@1.1/lib $LDFLAGS
  set CPPFLAGS -I/usr/local/opt/openssl@1.1/include $CPPFLAGS
  set PKG_CONFIG_PATH /usr/local/opt/openssl@1.1/lib/pkgconfig $PKG_CONFIG_PATH

  alias setclip "xclip -selection c"

# Generated for envman. Do not edit.
  test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"
end

