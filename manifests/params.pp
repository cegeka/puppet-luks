# Luks params
# @api private
class luks::params {
  $version = 'present'
  case $::operatingsystemmajrelease {
    /(5|6)/: {
      $packages = ['cryptsetup-luks','vim-common']
    }
    /7/: {
      $packages = ['cryptsetup','vim-common']
    }
  }
}
