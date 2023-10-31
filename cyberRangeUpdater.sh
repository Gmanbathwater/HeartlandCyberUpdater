#!/bin/bash
#echo "What is your username:"
#read username
base_dir="/home/student"
clone_repository() {
	local repo_name="$1"
 	local repo_url="$2"

  	if [ -d "$repo_name" ]
   	then
    		echo "Repository '$repo_name' already exists, skipping install"
      	else
       		git clone "$repo_url"
	fi
 }
#go to the user directiory
cd "$base_dir" || { echo "Endgame error: Cannot access the user's home directory."; exit 1; }
if [ -d "CourseFiles" ]; then
	rm -rf "CourseFiles"
if [ -d "CourseFiles" ]; then
    cd "CourseFiles" || { echo "Endgame error: Cannot access 'CourseFiles' directory."; exit 1; }
else
    mkdir "CourseFiles" || { echo "Endgame error: Cannot create 'CourseFiles' directory."; exit 1; }
    cd "CourseFiles" || { echo "Endgame error: Cannot access 'CourseFiles' directory."; exit 1; }
fi
if [ -d "CyberSecurity" ]; then
    cd "CyberSecurity" || { echo "Endgame error: Cannot access 'CyberSecurity' directory."; exit 1; }
else
    mkdir "CyberSecurity" || { echo "Endgame error: Cannot create 'CyberSecurity' directory."; exit 1; }
    cd "CyberSecurity" || { echo "Endgame error: Cannot access 'CyberSecurity' directory."; exit 1; }
fi
clone_repository "documents" "https://github.com/cyber-org/documents"
clone_repository "backdoor" "https://github.com/cyber-org/backdoor"

cd "$base_dir" || { echo "Endgame error: Cannot access the user's home directory."; exit 1; }

if [ -d "HeartlandCyberUpdater" ]; then
    echo "Removing 'HeartlandCyberUpdater' directory..."
    rm -rf "HeartlandCyberUpdater"
fi

echo "Success!"
shutdown 
