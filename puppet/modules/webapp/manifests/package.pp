# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include webapp::package
class webapp::package(
  $packages = [ "Flask" , "Werkzeug "]
) {
  package { $packages:
    ensure => 'present',
    provider => pip

  }
}
