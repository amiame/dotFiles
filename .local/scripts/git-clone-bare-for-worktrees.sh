#!/usr/bin/bash
set -e

# Examples of call:
# git-clone-bare-for-worktrees private git@github.com:name/repo.git
# => Clones to a /repo directory with local git config user.email configured to private email
#
# git-clone-bare-for-worktrees work git@github.com:name/repo.git my-repo
# => Clones to a /my-repo directory with local git config user.email configured to private email

purpose=$1
url=$2
basename=${url##*/}
name=${3:-${basename%.*}}

mkdir -p $name
cd "$name"

# Moves all the administrative git files (a.k.a $GIT_DIR) under .bare directory.
#
# Plan is to create worktrees as siblings of this directory.
# Example targeted structure:
# .bare
# main
# new-awesome-feature
# hotfix-bug-12
# ...
git clone --bare "$url" .bare
echo "gitdir: ./.bare" > .git

# Explicitly sets the remote origin fetch so we can fetch remote branches
git config --local remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"

# Add user name and email to local git config file
git config --local user.name "amiame"
case $purpose in
	private)
		git config --local user.email "amiame2008@gmail.com"
		;;
	work|zeroboard)
		git config --local user.email "amir.fikri@zeroboard.jp"
		;;
esac

# Gets all branches from origin
git fetch origin

# Make a 'worktrees' folder to store all worktrees
mkdir -p worktrees
