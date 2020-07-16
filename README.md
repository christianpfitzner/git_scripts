# git_scripts
If you use a main folder for most of your used git repositorities on you local machine, this small utility can help you to update and maintain your repositories. 

The structure of your git folder has to look like this: 
`ls ~/somewere_on_your_disk/git/`
``` repo1, repo2, ..., git_scripts ```





`./git_pull_all.sh` goes into all available folders, checks if theses are git repositories and does a `git pull` command. 

`./git_status.sh` checks the current status of all repositories by executing the `git status` command. 
