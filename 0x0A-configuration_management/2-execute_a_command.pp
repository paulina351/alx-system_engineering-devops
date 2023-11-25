# This task creates a manifest that kills a process
# called killmenow

exec { 'pkill -f killmenow':
  path => '/user/bin/:/usr/local/bin/:/bin/'
}
