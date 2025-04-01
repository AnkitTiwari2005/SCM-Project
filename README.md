SCM-Project: Backup Script with Version Control
Project Overview

This project implements Software Configuration Management (SCM) using Git for version control. It includes a shell script that automates file backups, tracks changes, and maintains version history.
Features

    Automated backup from Documents to Backup

    Logging system to record backup status (backup.log)

    Error handling with a separate log (email_log.txt)

    Git-based version control with feature branches

Project Structure

SCM-Project/
│── backup_script.sh    # Backup automation script  
│── backup.log          # Log file for backup status  
│── email_log.txt       # Error log  
│── CHANGELOG.md        # Version history  
│── README.md           # Project documentation  
└── .git/               # Git repository  

Usage
Clone the Repository

git clone https://github.com/AnkitTiwari2005/SCM-Project
cd SCM-Project

Run the Backup Script

chmod +x backup_script.sh
./backup_script.sh

Version Control Process

    Feature branches: feature-logging, feature-error-handling, etc.

    Git workflow:

    git branch feature-logging
    git checkout feature-logging
    git commit -m "Improved logging system"
    git merge feature-logging
    git tag v1.1

Changelog

v1.1 (Latest)

    Enhanced logging system

    Improved error handling

v1.0 (Initial Release)

    Basic backup functionality

Future Enhancements

    Email notifications for backup status

    GUI-based configuration options
