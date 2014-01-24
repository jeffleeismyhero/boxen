class people::jeffleeismyhero {
  include "evernote"
  include "calibre"
  include "skype"
  include "firefox"
  include "mysql"
  include iterm2::stable
  include "onepassword"
  include "dropbox"
  include "googledrive"
  include "vmware_fusion"
  include "alfred"
  include "heroku"
  include "chrome"
  include "vlc"
  include "skitch"
  include "sublime_text_2"
  include "osxfuse"
  include "freetds"
  include "spotify"
  include "wget"
  include "screen"
  include "imagemagick"
  include "postgresapp"
  include "textmate"
  include textmate::textmate2::release
  include "tmux"
  include "harvest"
  include "imageoptim"
  include "kindle"
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
