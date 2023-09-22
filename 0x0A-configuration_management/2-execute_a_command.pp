# kills all process by the name killmenow

exec { 'pkill -f killmenow':
    path => '/usr/bin/:/usr/local/bin/:/bin/'
}
