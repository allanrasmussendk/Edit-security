# Edit-security
A script to hide data in plain sight in the NTFS file system on Windows

This is a script that uses a odd bug / feature in the NTFS file system running on Windows, to hide data from easy access without the "password".

It will create a file named "Data.txt:<PASSWORD>.txt", and for some odd reason the name part after the ':' colon disappears, when the directory is listed. The directory list (DIR) only contains the "Data.txt", but apparently both files ("Data.txt:<PASSWORD>.txt" and "Data.txt") exists and can contain different data. But deleting the "Data.txt" file will also delete the "Data.txt:<PASSWORD>.txt" file (apparently). This doesn't seem to cause any damage to the file system.
