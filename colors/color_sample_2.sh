# EXAMPLE 3:
# =========
for code in {0..255}; do echo -e "\e[38;05;${code}m $code: Test"; done
echo

# EXAMPLE 4:
# =========
i=30; while true;do echo -e "$i = \e[0;$[i++]mStackOverFlow\e[m";if [ $i == 49 ];then break;fi; sleep 1;done
echo
