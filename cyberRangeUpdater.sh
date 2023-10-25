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
if [ -e CourseFiles ]
then 
	cd CourseFiles
 	if [ -e CyberSecurity ]
  	then
   		cd CyberSecurity
     	else
      		mkdir CyberSecurity
		cd CyberSecurity
  	fi
else
	mkdir CourseFiles
	cd CourseFiles
	mkdir CyberSecurity
	cd CyberSecurity
fi
if [ -e documents ]
then
	echo oops: there is nothing to update
else
	git clone https://github.com/cyber-org/documents #change this to change updates
fi
cd ..
cd ..
cd ..
cd ..
cd ..
cd home
cd $username
if [ -e HeartlandCyberUpdater ]
then
    echo if you recive an error here dont worry, check the student file to ensure that the updater correctly deleted itself. if it didnt dont worry, just be sure to use chmod rwx cyberRangeUpdater.sh next time you update
	rm -rf HeartlandCyberUpdater
fi
echo if you read this you did not fail.
