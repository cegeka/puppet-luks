# Luks params
# @api private
class luks::params {
  $version = 'present'
  case $::operatingsystemmajrelease {
    /(5|6)/: {
      $packages = ['cryptsetup-luks','vim-common']
    }
    /(7|8)/: {
      $packages = ['cryptsetup','vim-common']
    }
  }
}
