#!/bin/bash

source ./var.ini
git_home=$1

invalid(){
	echo -e "Usage : $b$0 <githome path>$e"
}

go(){
	if [[ -n $git_home ]]; then
		for folder in ${git_home}/*
		do
			if [ -d "$folder" ]; then
				# update to latest
				if [ -d "$folder/.git" ]; then
					name=`basename $folder`
					echo -e '########### GIT ' $b$name$e ' ##############'
					echo -e 'Path: ' $b$folder$e
					current_branch=$(git -C ${folder} status | awk '/On branch/ {print $3}')
	                        	if [[ $current_branch != "master" ]];then
						echo -e "On branch $b$current_branch$e"
						git -C $folder pull origin $current_branch
	                        	fi
					echo -e "On branch $b master $e"
					git -C $folder pull origin master
					echo -e '#########################################'
					echo
					echo 
				fi 
			fi
		done
	else
		invalid $@
	fi
}

go $@
