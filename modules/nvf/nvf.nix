{ config, pkgs, inputs, ... }:
{
  programs.nvf = {
    enable = true;  
    settings = {
      vim = {
        theme = {
          enable = true;
          name = "gruvbox";
          style = "dark";
          transparent = false;
        };

        options = {
          tabstop = 2;
          shiftwidth = 2;
          autoindent = true;
        };

        visuals = {
          nvim-scrollbar.enable = true; # Shows a scrollbar in the editor
          nvim-web-devicons.enable = true; # Adds file type icons to various UI elements
          nvim-cursorline.enable = true; # Highlights the current cursor line
          fidget-nvim.enable = true; # Shows LSP progress notifications in the corner
          highlight-undo.enable = true; # Highlights text changes after undo/redo operations
        };

        ui = {
          borders.enable = true;
          noice.enable = true;
          colorizer.enable = true;
          illuminate.enable = true;
        };
      };
    };
  };
}
