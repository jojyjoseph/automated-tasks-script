#!/bin/sh

###################################################################
# Variables for path declared here
###################################################################
cwd=$(pwd)


DATE=$(date -d '12 hour ago' "+%m-%d-%Y")

##################################################################
#	Execution of various tasks done 
##################################################################

for i in 1 2
do
	if [ -e ./automated-tasks/scripts/task$i.sh ];
		then
			(cd $(sed -n '3p' ./automated-tasks/scripts/task$i.sh | sed -e 's/.*=\(.*\)/\1/') && (exec ./../automated-tasks/scripts/task$i.sh $i $DATE))


		else
			echo "task$i doesn't exist"	
	fi
done

#shutdown -s
