# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

RED='\033[0;31m'
GREEN='\033[0;32m'
NOCOLOR='0e[0m'   # No color

printf "${RED}Hello${NC} World, using ${GREEN}printf${NC} command!!! \n"
echo -e "${RED}Hello${NC} World, using ${GREEN}echo -e${NC} command!!!"

# EXAMPLE 2:
# =========

for ((i=30; i<=37; i++ ));
do
    echo -e "\e[0;${i}m Hello world!!!"
done
echo

# EXAMPLE 3:
# =========
for code in {0..255}; do echo -e "\e[38;05;${code}m $code: Test"; done
echo

# EXAMPLE 4:
# =========
i=30; while true;do echo -e "$i = \e[0;$[i++]mStackOverFlow\e[m";if [ $i == 49 ];then break;fi; sleep 1;done
echo
