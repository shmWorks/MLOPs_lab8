#!/bin/bash

# in the an empty local repository do these:

# initialize a new Git repository in the local repo
git init

# create a copy of the remote repository for local modification

git clone https://github.com/shmWorks/MLOPs_lab8

# check remote urls
git remote -v

# change remote url to point correctly to our remote urls
git remote set-url origin https://github.com/shmWorks/MLOPs_lab8.git

# confirm change of remote urls
git remote -v

# push to confirm pushing to remote repo works

git push -u origin main

# Create a new branch for each developer

# first check existing branches
git branch 

# create branches

git branch feature/login
git branch feature/dashboard
git branch feature/api


# verify the three branches created successfully
git branch

# push the three branches to remote repo to make three branches on the remote repo to mirror the branches on local repository
git push -u origin feature/login
git push -u origin feature/dashboard
git push -u origin feature/api

# simulate real-world conflict
# before that merge each branch with main to make sure each branch is upto date with main

# stash changes in main before changing branch 
git stash 

# sync each branch with main(merge new commits in main into each branch)
git switch feature/login & git merge main & git push
git switch feature/dashboard & git merge main & git push
git switch feature/api & git merge main & git push

# simulate and resolve merge conflicts
git switch feature/login
git add house_app.py
git commit -m "Added login-specific print and comment to index route"
git push
git switch main
git merge feature/login
git push
git switch feature/dashboard
git add housepk_app.py
git commit -m "Added login-specific print and comment to index route"
git push
git switch main
git switch feature/dashboard
git add housepk_app.py
git status
git commit -m "Resolved merge conflict between feature-login and feature-dashboard"
git push
git switch feature/api
git pull
git add housepk_app.py
git commit -m "Added API-specific print and comment to index route"
git push










