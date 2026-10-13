{ config, pkgs, ... }:
{  
    # aliases
    home.shellAliases = {
        # nix os
        nx = "cd /etc/nixos";
        hm = "cd ~/.config/home-manager";
        #rs = "sudo nixos-rebuild switch";
        #rsf = "sudo nixos-rebuild switch --flake .#";
        #hms = "home-manager switch";
        #hmsf = "home-manager switch --flake .\\#goat";

        # neovim
        nv = "nvim";
        snv = "sudo nvim";
        nvf = "cd ~/.config/home-manager/modules/nvf && nvim nvf.nix";

        # utilities
        py = "python";
        tree = "tree --dirsfirst";

        # applications
        new = "alacritty & disown";
        chess = "alacritty msg config font.size=12 && chess-tui; alacritty msg config font.size=14";
        dl = "cd ~/projects/python/dl && py deadlines.py";
        z = "setsid -f zathura";
        vp = ''mkdir -p "$HOME/.config/VisualParadigm/tmp" && JDK_JAVA_OPTIONS="--add-opens=java.desktop/javax.swing.plaf.metal=ALL-UNNAMED --add-exports=java.desktop/sun.awt=ALL-UNNAMED" _JAVA_OPTIONS="-Djava.io.tmpdir=$HOME/.config/VisualParadigm/tmp" _JAVA_AWT_WM_NONREPARENTING=1 "$(readlink -f "$(which Visual_Paradigm)")"'';
    };
}
