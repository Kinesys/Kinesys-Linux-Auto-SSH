#Kinesys Linux SSH Auto Login.sh
#!/usr/kinesys/bin/expect
#sudo apt-get install expect #Debian 계열의 리눅스일 경우
#sudo yum install expect #redhat 계열의 리눅스일 경우

export Day_data = "`date '+%y-%m-%d'`"
export day = `date+%a`
spawn ssh userid@host
expect -re "yes/no" {
  send "yes\r"
  exp_continue
} -re "password : " {
  send "password\r"
  exp_continue
}
 interact
 
 echo "성공적으로 해당 ssh서버에 로그인 되었습니다."
