# Luks params
# @api private
class luks::params {
  $version = 'present'
  $packages = ['cryptsetup','vim-common']
}
