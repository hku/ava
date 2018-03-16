usefull tools:

	sudo apt-get install compizconfig-settings-manager
	sudo apt-get install gedit-plugins


usefull cmds

	clean shell: ctrl + L

inotifywait -r -m /home/ray/bin  -e create -e delete -e move -e modify |
while read path action file; do
    echo "watch '$path': '$file' '$action'"
done



