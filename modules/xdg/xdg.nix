{ config, pkgs, ... }:
{
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      # text
      "text/plain" = "vim.desktop";
      # browser
      "text/html" = "librewolf.desktop";
      "x-scheme-handler/http" = "librewolf.desktop";
      "x-scheme-handler/https" = "librewolf.desktop";
      "x-scheme-handler/about" = "librewolf.desktop";
      "x-scheme-handler/unknown" = "librewolf.desktop";
      # pdf
      "application/pdf" = "org.pwmt.zathura-pdf-mupdf.desktop";
      # images
      "image/jpeg" = "imv.desktop";
      "image/png" = "imv.desktop";
      "image/gif" = "imv.desktop";
      "image/webp" = "imv.desktop";
      "image/heic" = "imv.desktop";
      # videos
      "video/mp4" = "mpv.desktop";
      "video/mov" = "mpv.desktop";
      # music
      "audio/mp3" = "mpv.desktop";
      # torrents
      "application/x-bittorrent" = "transmission-gtk.desktop";
      # libreOffice
      "application/vnd.openxmlformats-officedocument.wordprocessingml.document" = "libreoffice-writer.desktop";
      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" = "libreoffice-calc.desktop";
      "application/vnd.openxmlformats-officedocument.presentationml.presentation" = "libreoffice-impress.desktop";
      "application/vnd.oasis.opendocument.text" = "libreoffice-writer.desktop";
      "application/vnd.oasis.opendocument.spreadsheet" = "libreoffice-calc.desktop";
      "application/vnd.oasis.opendocument.presentation" = "libreoffice-impress.desktop";
    };
  };
}
