#!/bin/bash
echo What is your username
read username
cd ..
cd ..
cd ..
cd ..
cd ..
cd home
cd $username
mkdir CourseFiles
cd CourseFiles
mkdir CyberSecurity
cd CyberSecurity
git clone https://github.com/cyber-org/documents
cd ..
cd ..
if [ -e HeartlandCyberUpdater ]
then
    echo if you recive an error here dont worry, check the student file to ensure that the updater correctly deleted itself. if it didnt dont worry, just be sure to use chmod rwx cyberRangeUpdater.sh next time you update
	rm -rf HeartlandCyberUpdater
fi
echo check the student file to ensure that the updater correctly deleted itself
