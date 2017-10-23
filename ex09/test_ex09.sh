#!/usr/bin/env bats

@test "Find emails in file without emails" {
  run bash ex09.sh -e resources/email1.txt
  
  [ "$status" -eq 1 ]
  [ "$output" = ""  ]
}

@test "Find emails in file with emails" {
  run bash ex09.sh -e resources/email2.txt
  
  [ "$status" -eq 0 ]
  [ "$output" = "craig@bbhost.us"  ]
}

@test "Find urls in file without urls" {
  run bash ex09.sh -u resources/url1.txt
  
  [ "$status" -eq 1 ]
  [ "$output" = ""  ]
}

@test "Find urls in file with urls" {
  run bash ex09.sh -u resources/url2.txt
  
  [ "$status" -eq 0 ]
  [ "$output" = "https://en.emailfake.com/usjima1129.ga/craig
https://mail.google.com/mail/u/0/"  ]
}

@test "Find emails in file with emails and urls" {
  run bash ex09.sh -e resources/emailurl.txt
  
  [ "$status" -eq 0 ]
  [ "$output" = "craig@bbhost.us"  ]
}

@test "Find urls in file with emails and urls" {
  run bash ex09.sh -u resources/emailurl.txt
  
  [ "$status" -eq 0 ]
  [ "$output" = "https://en.emailfake.com/usjima1129.ga/craig
https://mail.google.com/mail/u/0/" ]
}

@test "Test long flag for email" {
  run bash ex09.sh --email resources/emailurl.txt
  
  [ "$status" -eq 0 ]
  [ "$output" = "craig@bbhost.us" ]
}


@test "Test long flag for url" {
  run bash ex09.sh --url resources/emailurl.txt
  
  [ "$status" -eq 0 ]
  [ "$output" = "https://en.emailfake.com/usjima1129.ga/craig
https://mail.google.com/mail/u/0/" ]
}




