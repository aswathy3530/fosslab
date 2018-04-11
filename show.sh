echo "Your username : $(echo $USER)"
echo "Currently logged on users:"
who
echo "Current shell : $(echo $0)"
echo "Home directory : $(echo $HOME)"
echo "OS Type : $(echo $(uname -a))"
echo "current working directory : $(echo $PWD)"
echo "Path setting : $(echo $PATH)"
echo "Number of users : $(echo $(users | tr ' ' '\n' | sort -u | wc -l))"
