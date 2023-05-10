# This Puppet code replaces all occurrences of the string 'phpp' with 'php'
#
# Usage:
#
exec { 'fix-wordpress':
  command => '/bin/sed -i s/phpp/php/g /var/www/html/wp-settings.php',
}
