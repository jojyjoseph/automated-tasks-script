#!/bin/sh

SOURCE_DIRECTORY=Project1-readfromfile
WORKING_DATE=$2 #$(date -d '12 hour ago' "+%m-%d-%Y")
OUTPUT_PATH=automated-tasks/out/$WORKING_DATE/task$1
SUBTASK_PATH=../automated-tasks/scripts/task$1.sh

#GIT_BRANCH1=hmi/gvp-17338
#TEST=test$1_$2
#COMMIT_NUMBER=c5556125d1f4b6918151d209b0a4e36834eb0a4e

##########################################
#	FUNCTIONS
##########################################

log_func()
{
	echo "$1" | cat >> ../$OUTPUT_PATH/Summary.txt
	echo "$1" | cat >> ../$OUTPUT_PATH/../OverallSummary.txt
}

line_func()
{
	#A=(expr $1 - $2)
	#echo "$(sed -n "$($A)p" ./$SUBTASK_PATH)"
	#| cat >> ../$OUTPUT_PATH/Summary.txt
	echo "$(date):		$(sed -n "$1p" ./$SUBTASK_PATH)" | cat >> ../$OUTPUT_PATH/Summary.txt
	echo "$(date):		$(sed -n "$1p" ./$SUBTASK_PATH)" | cat >> ../$OUTPUT_PATH/../OverallSummary.txt

}

log_func1()
{
	echo "$1"
}

git_detail()
{
#########################################
#	GIT SUMMARY
#########################################

echo "" | cat >> ../$OUTPUT_PATH/Summary.txt
echo "git diff" | cat >> ../$OUTPUT_PATH/Summary.txt
git show -1 | cat >> ../$OUTPUT_PATH/Summary.txt

echo "" | cat >> ../$OUTPUT_PATH/Summary.txt
echo "git log" | cat >> ../$OUTPUT_PATH/Summary.txt
git log -1 | cat >> ../$OUTPUT_PATH/Summary.txt


}

#notepad

#read -n 1 c

##########################################

mkdir -p ../$OUTPUT_PATH

log_func "*******************************************************************************" 
log_func "					Build Report : task$1				 " 
log_func "*******************************************************************************" 
log_func ""
line_func "3" #print source directory
line_func "8" #print git branch
line_func "$(expr $LINENO - 7)" #print mkdir command

########################################
#	OPERATIONS
########################################

echo "Executing Task $1"

#line_func "$(expr $LINENO + 1)"
#git clean -fdx

#line_func "$(expr $LINENO + 1)"
#git reset --hard

#line_func "$(expr $LINENO + 1)"
#git checkout $GIT_BRANCH1

#line_func "$(expr $LINENO + 1)" 
#git branch -D $TEST 

#line_func "$(expr $LINENO + 1)" 
#git checkout -b $TEST $COMMIT_NUMBER

#line_func "$(expr $LINENO + 1)" 
#perl -i -pe 's/\.git// if 40 .. 45' ide/adapt/install_hook1.bat

#line_func "$(expr $LINENO + 1)" 
#git_detail

line_func "$(expr $LINENO + 1)"
echo -ne '\n' | python3 project1.py

#line_func "$(expr $LINENO + 1)" 
#echo -ne 'SK_E' | ./tool/integration/tool/deliver/core/get_prg.bat

#line_func "$(expr $LINENO + 1)" 
#git checkout -- ide/adapt/install_hook1.bat

#line_func "$(expr $LINENO + 1)"
#git checkout $GIT_BRANCH1

#line_func "$(expr $LINENO + 1)"
#git branch -D $TEST


#line_func "$(expr $LINENO + 1)"
#cp logfile ../$OUTPUT_PATH/


#line_func "$(expr $LINENO + 1)"
#./adapt/visu/sfx_create.cmd #| cat >> ../$OUTPUT_PATH/Summary.txt


#line_func "$(expr $LINENO + 1)"
#cp adapt/visu/tmp/*.exe ../$OUTPUT_PATH/


log_func "---------------------------------------------------------------------------------------------------------" 
log_func "			 " 

##############################################

