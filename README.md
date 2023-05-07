# Edit-security
A script to hide data in plain sight in the NTFS file system on Windows.

This script uses a odd bug / feature in the NTFS file system running on Windows, to hide data from easy access without the "password".

**IMPORTANT**: The data is probably **NOT** secured / hidden. I just don't know how to get access to them without the "password". :smiley:

**UPDATE**: I have apparently just found NTFS Alternate Data Stream (ADS), and the DIR /R command will reveal the (case-insensitive) "password" directly => The script is useless!

## Details
The script will create a file named "Data.txt:\<PASSWORD\>.txt", and for some odd reason the name part after the colon (':') disappears, when the directory is listed. The directory list (DIR) only contains the "Data.txt" file, but apparently both files ("Data.txt:\<PASSWORD\>.txt" and "Data.txt") exists and can contain different data. But deleting the "Data.txt" file will also delete the "Data.txt:\<PASSWORD\>.txt" file (apparently).
This doesn't seem to cause any damage to the file system.

## Usage
### Create secret
1. Create a new directory
2. Download the "Edit security.bat" file and place it in the created directory
3. Run the script / batch file
4. Enter the password you want to use to "protect" your secret data
5. Enter your secret data in the Notepad that opens
6. Close Notepad and save the file in the process

### Edit / view secret
1. Go to the directory you created above
2. Run the script / batch file
3. Enter the password you entered above
4. Edit / view your secret data in the Notepad that opens
5. Close Notepad and save the file in the process

### Notes
This only works in the NTFS file system on Windows (Only tested on Windows 10 and Windows XP). It doesn't work on FAT or on Linux. Linux can only see the "Data.txt" file.
