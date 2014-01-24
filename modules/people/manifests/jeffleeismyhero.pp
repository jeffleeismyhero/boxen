class people::jeffleeismyhero {
  include "calibre"
  include "skype"
  include "firefox"
  include "mysql"
  include iterm2::stable
  include "onepassword"
  include "dropbox"
  include "googledrive"
  include "vmware_fusion"
  include "heroku"
  include "chrome"
  include "vlc"
  include "sublime_text_2"
  include "osxfuse"
  include "freetds"
  include "spotify"
  include "wget"
  include "screen"
  include "imagemagick"
  include "postgresapp"
  include textmate::textmate2::release
  include "tmux"
  include "imageoptim"
  include "github_for_mac"
  include "colloquy"
  include "arq"

  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"
  
  file { $my:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'jeffleeismyhero/dotfiles',
    require => File[$my]
  }
}
