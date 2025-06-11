function mkcd

    if test (count $argv) -ne 1
        echo "Usage: mkcd DIRECTORY"
        return 1
    end
    mkdir $argv[1]; and cd $argv[1]
end

function check_dir_exists
    if test (count $argv) -ne 1
        echo "Usage: check_dir_exists DIRECTORY"
        return 1
    end
    [ -d $argv[1] ] && echo Le répertoire existe
end

function connect_vm_etna
    if test (count $argv) -eq 0
        echo "Usage: connect_vm_etna <username>"
        return 1
    end

    set username $argv[1]

    xfreerdp /v:172.16.227.4 /u:$username /smart-sizing
end

function connect_rdp
    if test (count $argv) -eq 0
        echo "Usage: connect_rdp <ip_address> <username>"
        return 1
    end

    set ip $argv[1]
    set username $argv[2]

    xfreerdp /v:$ip /u:$username /smart-sizing
end

# commands 
alias install_package='sudo apt install'
alias up-os='sudo apt upgrade '
alias sdown='shutdown -h now'
alias search='sudo apt search '
alias update='sudo apt upgrade '
alias uninstall='sudo apt uninstall '
alias search_proc='ps -ef | grep'

# Editing config files

alias conf_alacritty='nano ~/.config/alacritty.sh'
alias edit_fish='code ~/.config/fish/config.fish'
alias edit_sshconfig='code ~/.ssh/config'
alias edit_vhosts='code /etc/httpd/conf/extra/httpd-vhosts.conf'
alias show_vhosts='sudo cat /etc/httpd/conf/extra/httpd-vhosts.conf'

# Docker containers

alias stop_all_containers='docker stop $(docker ps -aq)'
alias remove_all_containers='docker rm $(docker ps -aq)'

# Systemctl commands
alias restart_service='systemctl restart'
alias enable_service='systemctl enable' 
alias reload_service='systemctl reload' 
alias start_service='systemctl start' 
alias stop_service='systemctl stop'
alias status_service='systemctl status'

alias exercism='~/bin/exercism'

# Git
alias gcl='git clone'
alias ga='git add'
alias gf='git fetch'
alias gpu='git pull'
alias gp='git push'
alias gs='git status'
alias gc='git commit -m'
alias gch='git checkout'

# Utils 
alias lsla='ls -la'
alias lsl='ls -l'
alias grep='grep --color=auto'
alias du='du -h'


#  VPN config
alias import_ovpnconfig='nmcli connection import type openvpn file'
alias connect_pc_jeu='xfreerdp /v:192.168.1.173 /u:gabriel /smart-sizing'
alias copy_config_fish='sudo cp /home/gab/.config/fish/config.fish /root/.config/fish/config.fish'


# Vars
set -gx httpd "/etc/httpd/conf"
set -gx config "$HOME/.config"
set -gx etna_project "/srv/http/etna"
set -gx php_dir "/etc/php"
set -gx web "/var/www/html"
set -gx openvpn "/etc/openvpn"
set -gx scripts_vpn "/etc/openvpn"
set -gx japonais "/srv/samba/share/DOCUMENTS/Japonais/Coline"
