#!/usr/bin/bash

#############################
#
# my-inventory-creator.sh
#
#############################

MYDATE=$(date +"%Y%m%d%H%M")
MYFILE1="my-software-sources_$MYDATE.txt"
MYFILE2="my-software-details_$MYDATE.txt"

# Notify user of the output filenames for this run
echo "Checking for RPMs and Flatpak sources"
echo "and what's installed..."
echo 
echo "Your output files for this check are: "
echo "$MYFILE1"
echo "$MYFILE2"

# Determine software sources and output to file
dnf repolist | sort > "$MYFILE1"
flatpak remotes | sort >> "$MYFILE1"

# Determin the software & versions installed and output to file
rpm -qa | sort > "$MYFILE2"
flatpak list | sort >> "$MYFILE2"

echo "Completed."


