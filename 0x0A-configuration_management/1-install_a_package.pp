# This task is installing flask from pip3
# using puppet

package { 'puppet-lint':
  ensure   => '3.0.0',
  provider => 'gem',
}
