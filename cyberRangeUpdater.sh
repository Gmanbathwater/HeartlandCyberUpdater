#!/bin/bash
cd ..
cd ..
cd ..
cd ..
cd ..
cd home
cd student
mkdir CourseFiles
cd CourseFiles
mkdir CyberSecurity
cd CyberSecurity
git clone https://github.com/cyber-org/documents
cd ..
cd ..
if (( -e HeartlandCyberUpdater ))
then
	rm -rf HeartlandCyberUpdater
fi
