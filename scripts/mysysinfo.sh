#!/bin/bash
# mysysinfo.sh
# By Matt St. Onge
#
# This script does a deep introspection of your system 
# and then generates a report file.
#
###################################
#
# version 1.00.0  3/3/2024
#
# MIT License ( https://opensource.org/license/mit/ )
#
###################################


###################################
#
# Variables
#
###################################

# define your product name
MYPRODNAME="SuperAppliance"

# define your build release version
MYRELEASEVER=1.00.00

# define your hardware version
MYHWVERSION=1.00.00

# define your build manager
MYBM="John Doe"

# define your build manager email
MYBMEMAIL="john.doe@example.com"

# define syslog prefix
LOGGERPREF="[ My SysInfo ] "

# define the output file
MYOUTFILE="/home/root/mysysinfo_report"

###################################
#
# Execution
#
###################################


function checkmyperms() 
{

	if [ $UID -ne 0 ]
		then echo "This tool must be run as root..."
		exit 
	fi

}


function hwscanner()
{

# cpuinfo

# meminfo

# pci devices

# usb devices

# hw map

}

function swscanner()
{

# list rpm packages installed currently

# list SW repositories this system is bound to

# list flatpaks installed

# list containers 

}

function myusersetup()
{

# list users

# list groups


}


checkmyperms

