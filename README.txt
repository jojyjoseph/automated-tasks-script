#################################################

1) HOW TO RUN/USE

From the folder "automated-tasks-shellscript", Run 

$ git clean -dfx

$ sh ./automated-tasks/scripts/taskmaster.sh


##################################################

2) WHAT DOES THIS SCRIPT DO ?

The scripts run multiple tasks sequentially without manual intervention. Can be useful for tasks which take time.

#################################################

3) WHAT ARE THE FEATURES ?

-- Go to subdirectories and run the respective script
-- Generates the necessary task report in automated-tasks/out/task$i folder
-- Sample script can seen for the usage of features like git, logging etc.

##################################################

4) FAILURE WHILE RUNNING THE SAMLPLE?

- Task 1 needs "Openpyxl" library in to run sample task1 python script
- install Openpyxl "$pip install openpyxl"
