if status is-interactive
    # Commands to run in interactive sessions can go here
end

source /opt/asdf-vm/asdf.fish

set PATH /usr/local/m/current/bin $PATH
set PATH /usr/lib/imagemagick6/bin $PATH
set PATH /home/munien/Code/utils/helpers/github $PATH
set PATH /home/munien/.local/bin $PATH
set PATH /home/munien/.gem/ruby/2.6.0/bin $PATH

set PKG_CONFIG_PATH /usr/lib/imagemagick6/pkgconfig $PKG_CONFIG_PATH
set LDFLAGS -L/usr/lib/imagemagick6/lib $LDFLAGS
set CPPFLAGS -I/usr/lib/imagemagick6/include $CPPFLAGS
set PKG_CONFIG_PATH /usr/lib/imagemagick6/pkgconfig $PKG_CONFIG_PATH

alias setup_league "sudo sysctl -w abi.vsyscall32=0"
alias setclip "xclip -selection c"
alias ssh_remote_calorie_cakes "ssh root@142.93.197.210"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/munien/google-cloud-sdk/path.fish.inc' ]; . '/home/munien/google-cloud-sdk/path.fish.inc'; end

# TokyoNight Color Palette
set -l foreground c0caf5
set -l selection 364A82
set -l comment 565f89
set -l red f7768e
set -l orange ff9e64
set -l yellow e0af68
set -l green 9ece6a
set -l purple 9d7cd8
set -l cyan 7dcfff
set -l pink bb9af7

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
