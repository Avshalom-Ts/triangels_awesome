#!/bin/bash
#set -e
##################################################################################################################
# Author    : Avshalom-Ts
# Website   : https://www.Avshalom-Ts.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

# reset - commit your changes or stash them before you merge
# git reset --hard - ArcoLinux alias - grh

# reset - go back one commit - all is lost
# git reset --hard HEAD~1

# remove a file online but keep it locally
# https://www.baeldung.com/ops/git-remove-file-without-deleting-it
# git rm --cached file.txt

# checking if I have the latest files from github
echo "Checking for newer files online first with git pull"
git pull

#workdir=$(pwd)

#rm $workdir/mirrorlist
#touch $workdir/mirrorlist
#echo "## Best Arch Linux servers worldwide

#Server = https://mirror.osbeck.com/archlinux/\$repo/os/\$arch
#Server = http://mirror.osbeck.com/archlinux/\$repo/os/\$arch
#Server = https://geo.mirror.pkgbuild.com/\$repo/os/\$arch
#Server = http://mirror.rackspace.com/archlinux/\$repo/os/\$arch
#Server = https://mirror.rackspace.com/archlinux/\$repo/os/\$arch
#Server = https://mirrors.kernel.org/archlinux/\$repo/os/\$arch
#" | tee $workdir/mirrorlist
#echo
#echo "getting mirrorlist"
#wget "https://archlinux.org/mirrorlist/?country=all&protocol=http&protocol=https&ip_version=4&ip_version=6" -O ->> $workdir/mirrorlist
#sed -i "s/#Server/Server/g" $workdir/mirrorlist

# Below command will backup everything inside the project folder
echo "Adding all changes to the git repository"
git add --all .

# Give a comment to the commit if you want
echo "####################################"
echo "Write your commit below!"
echo "####################################"

read input

# Committing to the local repository with a message containing the time details and commit text

git commit -m "$input"

# Push the local files to github
echo "Adding repo to the remote repo branch main"
git push -u origin main


# force the matter
# git push -u origin master --force

echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
