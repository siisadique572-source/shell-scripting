#!/bin/bash

source_dir=$1
timestamp=$(date "+%Y-%m-%d-%H-%M-%S")
backup_dir=$2

remote_user=
remote_ip=
remote_dir=

function create_backup {
	
	zip -r  "${backup_dir}/backup_${timestamp}.zip"   "${source_dir}"

	

	echo "*********************** backup successfully hogya hai *********************"

	

}

function perform_rotation {
	
	# (ls -t) ka matlab hai ki jo hamara zip banegaga wo sort ho jayega 5 se jyada nhi banega

	backups=($(ls -t "${backup_dir}/backup_"*.zip 2>/dev/null))

	

	# ab hum yhn sort karenge apne backups ko
	
	# humne niche if condition me  (backups) me (#) lagaya hai usse hum lentgh ke  liye lagate hain
	
	if [ "${#backups[@]}" -gt 5  ]; then
		echo "rotaion ko 5 days ke liye hi perform karo"

		# humne kaha ki jo last ke 5 backups hain wo de do baki ke rmove kar do ( ${backups[@]:5} )

		backups_to_remove=("${backups[@]:5}")
		echo "******* ${backups_to_remove[@]} ********"

		for backup in "${backups_to_remove[@]}";
		do
			rm -f ${backup}

		done

	fi
}

create_backup
perform_rotation
