class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCzUYojjY+G5iBe7Uu0zcwFhb1WpROBKzGHPAKUvyFiEbpfr4KgO+2e5cLDNGcAous3v7aplnlyFfcjEjg3DBcVzKA1xtziigU1wqUub5sBBXoDe01tc+sD1nFZ8Zj6zA0M+vZ6IylXs4E+GcprbF8Zg0hF8V0m5hzak+dDM8+8W/cJw2FA5LpqGKNFBzemdgxfRcDCFe6HEWAM18B3wQtec1DxcO1CjAWY2hvEDszmKwPzkggl4wXtxx7c+3fMSL+JHBIWrei93gO5MyvRiZBhcIUYnwv6vDv1e25r6BdT44aWuGsMTOMCyPTB3RW1nyXADSRY7qCsDw2KXGL76vdV',
  }  
}
