function ava() {
	if [ $# -eq 0 ] || [ "$1" == "0" ]; then
		ssh ray@123.57.54.83
	elif [ "$1" ==  "1" ]; then
		ssh -p 2220 ray@192.168.74.251
	elif [ "$1" == "2" ]; then
		ssh -p 2221 ray@192.168.74.251
	elif [ "$1" == "3" ]; then
		ssh -p 2222 ray@192.168.74.251
	elif [ "$1" == "5" ]; then #amazon
		ssh ubuntu@52.34.191.159 
	elif [ "$1" == "6" ]; then  #杉木林
		ssh root@120.25.237.210
	elif [ "$1" == "port" ]; then
		sudo netstat -tulpn
	elif [ "$1" == "push" ]; then
		git add -A
		git commit -m "commit"
		git push origin master
		echo "git add -A"
		echo "git commit -m commit"
		echo "git push origin master"
	elif [ "$1" == "spark" ]; then
		if [ "$2" == "stop" ]; then
			/usr/local/spark/spark-1.6.1-bin-hadoop2.6/sbin/stop-all.sh
			/usr/local/hadoop/hadoop-2.6.4/sbin/stop-all.sh
		elif [ "$2" == "start" ]; then
			/usr/local/hadoop/hadoop-2.6.4/sbin/start-all.sh
			/usr/local/spark/spark-1.6.1-bin-hadoop2.6/sbin/start-all.sh
		else
			echo "wrong: parameter $2 is unknown"
		fi
	elif [ "$1" == "monitor" ]; then
		if [ "$2" == "client" ]; then
			ssh -NfL 8088:localhost:8088 ray@123.57.54.83
		elif [ "$2" == "server" ]; then
			ssh -gNfR *:8088:localhost:8088 ray@123.57.54.83
		else
			echo "wrong: parameter $2 is unknown"
		fi
	else
		echo "wrong: parameter $1 is unknown"
	fi
}

alias cdd='cd /media/ray/Data'
cdd
