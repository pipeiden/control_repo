class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDARC72DXJhVABqjaEFIttfGCgh9d2f3yX9LHqX8PYrrIArdS/P6ENEKVa+kVvnapbK24Rjwrki/yOzjU6FxLjt56be+PlbIo4V/tuvVSfkenGeeYIgWpVH1MLcYKeVlxemz/sbVVbFpWu7mPjO6NRxzd2t5B6dkmIZyi7Pg+oF9S0pV8galwwKWJtSxcZ/vMPym2gwL8vXoxzgehfIYfp3oBD9MnzPJLEcWBtZpHhRwlK+HtK1aVHtrKFdNuwtbPjoU+yNj9fAMCN2Fqem6GtGhBzwm3NApbZulGXpAUKz0yVcm/6k4sgVoraXifFpkb1VrdRIiQaFDXQrx1RU9PWV',
  }  
}
