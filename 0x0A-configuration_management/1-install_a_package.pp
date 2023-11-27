# This task is installing flask from pip3
# using puppet

package { 'puppet-lint':
  ensure   => '2.1.0',
  provider => 'gem',
}
