#!/usr/bin/expect -f
spawn ./copy.sh

expect {
	"*fingerprint*" { send -- "y\r" }
	"*password*" { send -- "qwe123!\r" }
}

expect EOF
