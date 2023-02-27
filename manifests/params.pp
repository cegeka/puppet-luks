# Luks params
# @api private
class luks::params {
  $version = 'present'
  case $::os[release][major] {
    '5','6': {
      $packages = ['cryptsetup-luks']
    }
    '7','8','9': {
      $packages = ['cryptsetup']
    }
  }
}
