## **Home Manager Config**

Welcome to my Home Manager configuration, specifically optimized for both keyboard-centric efficiency and aesthetics.

Kept files and folders neatly organised with import trees to avoid monolithic home.nix file, easy to find, edit and update modular parts of the configuration, and allows for quick swaps of configurations (e.g. style.css and style2.css swapped by editing one import line in the file above it in the hierarchy) 

Follows:

home.nix -> modules -> moduleName -> moduleName.nix

OR if too complex

home.nix -> modules -> moduleName -> moduleName.nix -> config -> subConfig(s)Name.nix


Feel free to fork the repository and submit pull requests if you'd like to contribute improvements. Open issues if you encounter any problems with the config or have ideas for new features.Stay reproducible ;).
