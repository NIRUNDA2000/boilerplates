Creating a software RAID 10 on Windows Server 2016 GUI mode

Important: Before proceeding, ensure you have backups of your data because creating a RAID array will involve formatting the disks, which will erase all data on them.

Backup Data: Make sure all data on the hard disks is backed up because the process involves formatting the disks.

Open Server Manager:

Click on the "Start" button.
Select "Server Manager" from the list of apps.

Initialize Disks:

Go to "File and Storage Services" in the Server Manager.
Click on "Disks" in the left pane.
Initialize each of your 10 disks if they are not already initialized:
Right-click each disk and choose "Initialize Disk."
Follow the on-screen instructions and select the appropriate options (usually use the GPT partition style for larger disks).

Install the RAID Feature:

In Server Manager, go to "Manage" and select "Add Roles and Features."
In the "Add Roles and Features Wizard," go through the installation process to add the "File and Storage Services" role and the "Storage Services" feature. This will enable the RAID feature.

Create Virtual Disks:

In Server Manager, go to "File and Storage Services" > "Storage Pools."
Click on "Tasks" and select "New Virtual Disk."
Follow the wizard to create a new virtual disk.
For resiliency type, choose "Mirror" (which corresponds to RAID 10).
Select the disks you want to include in the RAID 10 array.
Configure the size and other settings according to your needs.

Create a Volume:

After creating the virtual disk, go to "File and Storage Services" > "Volumes."
Right-click on "Volumes" and select "New Volume."
Follow the wizard to create a new volume on the virtual disk you just created.
Assign a Drive Letter:

Once the volume is created, you can assign it a drive letter and format it with a file system (e.g., NTFS).

Data Migration:

If you had data backed up, you can now restore it to the newly created RAID 10 volume.

Monitor and Maintain:

Regularly monitor the RAID array for any issues using Server Manager or relevant monitoring tools.
Consider setting up notifications for RAID-related events.
That's it! You should now have a software RAID 10 array set up on your Windows Server 2016 using 10 hard disks, providing both redundancy and improved performance.