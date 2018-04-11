echo " OS Version : $(echo $(cat /proc/version))"
echo " Release : $(echo $(cat /etc/os-release))"
echo "Available shells : $(echo $(cat /etc/shells))"
echo "CPU info : $(echo $(less /proc/cpuinfo))"
