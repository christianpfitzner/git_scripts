#!/bin/bash

echo "-------------------------------------------------------"
echo " GIT repo check in folder"
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
        git status -s
        ret=$?

        ret=$ret | wc -c  
        # output to the user in case the repo is not commited
        if [[ $ret == 0 ]]
        then
            echo "repo up to date"
        else
            echo "changes not commited"
        fi
        cd ..
    fi
done


# todo: 
#        - auto commit for mergable files as an optio
#        - add an uni -- fancy!!!