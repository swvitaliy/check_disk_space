#!/bin/bash

function send() {
echo Sending email to $1
out=`df -h` && ./sendEmail -o tls=no -o message-charset=utf-8 -f production@your_company.com -t $1 -s aspmx.l.google.com:25 -xu testaccount@googlemail.com -xp your-pwd -u "[company name] production server - disk lower space!" -m "${out}"
}

send "your_first$mail.com"
send "your_second@mail.com"
send "etc@mail.com"

