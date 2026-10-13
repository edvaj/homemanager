{ config, pkgs, inputs, ... }:
{
    programs.nvf = {
        enable = true;  
        settings = {
            vim = {

                lsp = {
                    enable = true;
                    formatOnSave = true;
                };

                treesitter.enable = true;

                autocomplete.blink-cmp.enable = true;

                debugger.nvim-dap = {
                    enable = true;
                    ui.enable = true;
                };
                
                languages = {

                    java = {
                        enable = true;
                        treesitter.enable = true;
                        lsp.enable = true;
                    };

                    clang = {
                        enable = true;
                        treesitter.enable = true;
                        lsp.enable = true;
                        dap.enable = true;
                    };
                };

                options = {
                    tabstop = 2;
                    shiftwidth = 2;
                    autoindent = true;
                    expandtab = true;
                    softtabstop = 2;
                };

                clipboard= {
                    enable = true;
                    providers = {
                        wl-copy = {
                            enable = true;
                        };
                    };
                };

                theme = {
                    enable = true;
                    name = "gruvbox";
                    style = "dark";
                    transparent = false;
                };

                visuals = {
                    nvim-scrollbar.enable = true; # Shows a scrollbar in the editor
                    nvim-web-devicons.enable = true; # Adds file type icons to various UI elements
                    fidget-nvim.enable = false;
                    nvim-cursorline.enable = true; # Highlights the current cursor line
                    highlight-undo.enable = true; # Highlights text changes after undo/redo operations
                    indent-blankline.enable = true;
                };

                ui = {

                    borders.enable = true;
                    colorizer.enable = true;
                    illuminate.enable = false;

                    noice = {
                        enable = true;
                        setupOpts = {
                            # Silence jdtls spam
                            routes = [
                                {
                                    filter = {
                                        event = "lsp";
                                        kind = "progress";
                                    };
                                    opts = { skip = true; };
                                }
                                {
                                    filter = {
                                        event = "lsp";
                                        kind = "message";
                                    };
                                    opts = { skip = true; };
                                }
                            ];
                        };
                    };
                };
            };
        };
    };
}
