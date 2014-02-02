node default {
#
$init_packages = ["build-essential","wget","sudo","ruby1.9.3","rubygems","redis-server","erlang-nox","puppet","openssh-server"]
package {$init_packages: ensure => "installed"}
#
#$puppet_modules = ["example42/redis","puppetlabs/rabbitmq","sensu/sensu"]
#package {$puppet_modules: ensure => "installed"}
#
#class { "redis": }
class { "rabbitmq": }
class { "sensu": }
}
