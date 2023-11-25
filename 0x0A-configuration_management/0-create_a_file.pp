# This task is for creating a file in /tmp with the necessary file 
# permission. and the content L love puppet
file { 'school':
  ensure  => present,
  content => 'I love Puppet',
  group   => 'www-data',
  mode    => '0744',
  owner   => 'www-data',
  path    => '/tmp/school',
}
