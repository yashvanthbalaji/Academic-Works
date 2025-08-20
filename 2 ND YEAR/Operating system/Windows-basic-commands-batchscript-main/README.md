# Windows-basic-commands-batchscript
Ex08-Windows-basic-commands-batchscript

# AIM:
To execute Windows basic commands and batch scripting

# DESIGN STEPS:

### Step 1:

Navigate to any Windows environment installed on the system or installed inside a virtual environment like virtual box/vmware 

### Step 2:

Write the Windows commands / batch file
Save each script in a file with a .bat extension.
Ensure you have the necessary permissions to perform the operations.
Adapt paths as needed based on your system configuration.
### Step 3:

Execute the necessary commands/batch file for the desired output. 




# WINDOWS COMMANDS:
## Exercise 1: Basic Directory and File Operations
Create a directory named "MyLab" on the desktop.


## COMMAND AND OUTPUT
mkdir %userprofile%\Desktop\MyLab
![image](https://github.com/user-attachments/assets/a427deb6-edf7-4b78-a3bc-f8350699cad5)

Change to the "MyLab" directory and create an empty text file named "MyFile.txt" inside it.


## COMMAND AND OUTPUT
cd %userprofile%\Desktop\MyLab
![image](https://github.com/user-attachments/assets/78750f80-9b0a-4426-aa90-fca1dfc22288)

List the contents of the "MyLab" directory.


## COMMAND AND OUTPUT
type nul > MyFile.txt
![image](https://github.com/user-attachments/assets/d5930424-9896-44a4-8176-faa471c949ba)

Copy "MyFile.txt" to a new folder named "Backup" on the desktop.

## COMMAND AND OUTPUT
dir %userprofile%\Desktop\MyLab
![image](https://github.com/user-attachments/assets/17c775b8-df51-4e7b-9fe8-25da40e9fc1d)

Move the "MyLab" directory to the "Documents" folder.


## COMMAND AND OUTPUT
mkdir %userprofile%\Desktop\Backup
![image](https://github.com/user-attachments/assets/5fdd0e7f-1a76-4445-9072-32516113ad1b)
copy MyFile.txt %userprofile%\Desktop\Backup
![image](https://github.com/user-attachments/assets/4ffa447c-c763-4304-a383-7d7455e38f56)

## Exercise 2: Advanced Batch Scripting
Create a batch script named "BackupScript.bat" that creates a backup of files with the ".docx" extension from the "Documents" folder to a new folder named "DocBackup" on the desktop.

```
@echo off
mkdir %userprofile%\Desktop\DocBackup
copy %userprofile%\Documents\*.docx %userprofile%\Desktop\DocBackup
echo Backup completed successfully!
![image](https://github.com/user-attachments/assets/a805b516-f9af-4f33-b037-9717577b8f7f)


@echo off
mkdir %userprofile%\Desktop\DocBackup
copy %userprofile%\Documents\*.docx %userprofile%\Desktop\DocBackup
del %userprofile%\Documents\*.docx
echo Backup and deletion completed successfully!
```

## OUTPUT
![image](https://github.com/user-attachments/assets/249ad4f8-46b1-44bb-8441-39b0cc055a7f)





# RESULT:
The commands/batch files are executed successfully.

