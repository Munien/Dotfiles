if status is-interactive
    # Commands to run in interactive sessions can go here
end

source /opt/asdf-vm/asdf.fish

set PATH /usr/local/m/current/bin $PATH
set PATH /usr/lib/imagemagick6/bin $PATH
set PATH /home/munien/Code/utils/helpers/github $PATH

set PKG_CONFIG_PATH /usr/lib/imagemagick6/pkgconfig $PKG_CONFIG_PATH
set LDFLAGS -L/usr/lib/imagemagick6/lib $LDFLAGS
set CPPFLAGS -I/usr/lib/imagemagick6/include $CPPFLAGS
set PKG_CONFIG_PATH /usr/lib/imagemagick6/pkgconfig $PKG_CONFIG_PATH

alias setup_league "sudo sysctl -w abi.vsyscall32=0"
alias setclip "xclip -selection c"
alias ssh_remote_calorie_cakes "ssh root@142.93.197.210"

# The next line updates PATH for the Google Cloud SDK.
bass source '/mnt/ssd-storage-2/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
bass source '/mnt/ssd-storage-2/google-cloud-sdk/completion.bash.inc'
