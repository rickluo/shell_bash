#!/usr/bin/expect
set pword "gd360.2020"
set ip [lindex $argv 0]
set timeout 30

spawn ssh root@$ip
expect {
"*yes/no" { send "yes\r"; exp_continue }
"*password:" {send "$pword\r" }
}
interact
