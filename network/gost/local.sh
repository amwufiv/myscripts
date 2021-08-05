host=""
user=""
pass=""
serverx=""
nohup ./gost -L ss://aes-256-cfb:sshunter323@:1984 -F "https://${user}:${pass}@$host:80' >/dev/null 2>&1 &
nohup ./gost -L ss://aes-256-cfb:sshunter323@:1985 -F 'https://${user}:${pass}@{serverx}:443' >/dev/null 2>&1 &
