# remotely connect to heroku and  checks if the backup is running
#
# Usage:
#   backup_checks.rb
#

dir = `pwd`
list = `ls -l #{dir}/backup_checks.rb`

puts dir
puts list