{ config, ... }:
{
  programs.bash = {
    enable = true;

    initExtra = ''

      PS1='[\[\033[33m\]goat\[\033[32m\]@\[\033[31m\]dragonfly\[\033[0m\]:\[\033[34m\]\w\[\033[0m\]]\$ '
            
      clip() { 
        if [[ $# -eq 1 && -f $1 ]]; then
          cat -- "$1"
        else
          "$@"
        fi | tee /dev/tty | wl-copy
      }

    '';
  };
}

