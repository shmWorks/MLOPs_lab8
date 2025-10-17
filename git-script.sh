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