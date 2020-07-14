#!/bin/bash

echo "-------------------------------------------------------"
echo " GIT pull all repos"
echo "-------------------------------------------------------"


git_dir=/home/chris/workspace/git 
cd $git_dir

echo "-------------------------------------------------------"
echo " checking the folder $git_dir"
echo "-------------------------------------------------------"


for DIR in `ls`;
do
    if [ -d $DIR/.git ];
    then

        echo "-------------------------------------------------------"
        echo " $DIR"
        echo "-------------------------------------------------------"
        cd $DIR
        
        # checking the status of each repo in the found folder
        git pull origin master
        ret=$?
        
        cd ..
    fi
done


# todo: 
#        - auto commit for mergable files as an optio
#        - add an uni -- fancy!!!