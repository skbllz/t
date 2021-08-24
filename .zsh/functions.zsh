# functions.zsh
#
# DEBUG
# ok message
OK(){

    echo DONE!!!
    echo "++++++++++++++++++++++++++++++++++++++++"
}
# error message
ERROR(){

    echo "\n++++++++++++++++++++++++++++++++++++++++"
    echo "  HOUSTON WE HAVE A PROBLEM !!!!"
    echo "  IN FILE $1"
    echo "  SEE LOG/ERROR FOR DETAILS"
    echo "++++++++++++++++++++++++++++++++++++++++\n"
    exit 1
}

# c
gcc_run(){
	nam=`echo $1 | cut -d'.' -f 1`
	gcc -Wall -Wextra -O3 -o $nam $1 -lm; ./"$nam"
}

gcc_thread(){
	nam=`echo $1 | cut -d'.' -f 1`
	gcc -Wall -Wextra -O3 -o $nam $1 -lm -lpthread; ./"$nam"
}

# clear empty lines
clear_empty_lines() { sed '/^\s*$/d' $1 > $2 }

# csv
csv_extract_fields() { grep -Pzo "(?s)<$1>.*?<\/$1>" $2 | tail -n +2 | head -n -1 }

# data science at the command line
data_science() {
	cd ~/Projects/bash/github/skbllz/data-science-at-the-command-line
	docker run --rm -it -v "$(pwd)":/data datasciencetoolbox/dsatcl2e
}

# docker
mongo() {

	if [[ $1 == "up" ]]; then
		docker-compose -f /home/t/Projects/docker/mongo/docker-compose.yml up -d
	fi

	if [[ $1 == "down" ]]; then
		docker-compose -f /home/t/Projects/docker/mongo/docker-compose.yml down
	fi

	if [[ $1 == "bash" ]]; then
		docker exec -it mongodb bash
	fi

	if [[ $1 == "shell" ]]; then
		docker exec -it mongodb bash -c 'mongo HOSTIP --authenticationDatabase "admin" -u admin'
	fi

	# mongoimport  --jsonArray --file recipes.json --port 27017 -u "admin" \
	# -p "admin" --authenticationDatabase "admin" -d demo --drop --collection recipes
}

mysql() {

	if [[ $1 == "up" ]]; then
		docker-compose -f /home/t/Projects/docker/mysql/docker-compose.yml up -d
	fi

	if [[ $1 == "down" ]]; then
		docker-compose -f /home/t/Projects/docker/mysql/docker-compose.yml down
	fi

	if [[ $1 == "shell" ]]; then
		docker exec -it mysql_db_1 bash -c 'mysql -u skbllz -p'
	fi
}


postgres() {

	if [[ $1 == "up" ]]; then
		docker-compose -f /home/t/Projects/docker/postgres/docker-compose.yml up -d
	fi

	if [[ $1 == "down" ]]; then
		docker-compose -f /home/t/Projects/docker/postgres/docker-compose.yml down
	fi

	if [[ $1 == "restart" ]]; then
		docker-compose -f /home/t/Projects/docker/postgres/docker-compose.yml restart
	fi

	if [[ $1 == "shell" ]]; then
		docker exec -it postgres_postgres_1 bash -c 'psql --host=postgres_postgres_1 --dbname=go_db --username=postgres'
	fi
}

# make distro usb
dd_distro_usb() { sudo dd if=$1 of=${2:-/dev/sdc} bs=1M status=progress oflag=direct conv=sync }

# mkdir
mkcdir() { mkdir -p -- "$1" && cd -P -- "$1" }
mkcmain() { mkdir -p -- "$1" && cd -P -- "$1" && vi main.go }

# nmcli
nmcli_info() {

	echo '\n##################################################################### controllers\n'
	echo $(lspci | grep Network | cut -d' ' -f4-16 )
	echo $(lspci | grep Ethernet | cut -d' ' -f4-16 )
	echo $(lsusb | grep Wireless)
	echo '\n##################################################################### connections\n'
	nmcli c
	echo ''
	echo '\n############################################################### active connection\n'
	nmcli connection show --active
	echo '\n################################################################## overall status\n'
	nmcli general status
	echo ''
}
# connect to a configured connection by name
nmcli_connect() { nmcli connection up id $1 }
# disconnection by name
nmcli_disconnect() { nmcli connection down id $1 }
# available wi-fi
nmcli_wifi_list() { echo ''; nmcli device wifi list; echo '' }

# uname
uname_info(){

	printf "hostname:          %-s\n" "$(uname -n)"
	printf "operating system:  %-s\n" "$(uname -o)"
	printf "kernel name:       %-s\n" "$(uname -s)"
	printf "kernel release:    %-s\n" "$(uname -r)"
	printf "kernel version:    %-s\n" "$(uname -v)"
	printf "machine hardware:  %-s\n" "$(uname -m)"
	printf "processor type:    %-s\n" "$(uname -p)"
	printf "hardware platform: %-s\n" "$(uname -i)"

}

# youtube-dl to mp3 best audio quality
youtube2mp3() { youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0 $1 }

# END
