```
C:\WINDOWS\system32>diskpart  
  
Microsoft DiskPart version 10.0.19041.964  
  
Copyright (C) Microsoft Corporation.  
On computer: DESKTOP-K2CP43S  
  
DISKPART> lis dis  
  
  Disk ###  Status         Size     Free     Dyn  Gpt  
  --------  -------------  -------  -------  ---  ---  
  Disk 0    Online          698 GB      0 B  
  
DISKPART> sel dis 0  
  
Disk 0 is now the selected disk.  
  
DISKPART> det dis  
  
Hitachi HTS727575A9E364  
Disk ID: 2CE38090  
Type   : RAID  
Status : Online  
Path   : 0  
Target : 1  
LUN ID : 0  
Location Path : PCIROOT(0)#PCI(1F02)#RAID(P00T01L00)  
Current Read-only State : No  
Read-only  : No  
Boot Disk  : Yes  
Pagefile Disk  : Yes  
Hibernation File Disk  : No  
Crashdump Disk  : Yes  
Clustered Disk  : No  
  
  Volume ###  Ltr  Label        Fs     Type        Size     Status     Info  
  ----------  ---  -----------  -----  ----------  -------  ---------  --------  
  Volume 1     K   System Rese  NTFS   Partition    499 MB  Healthy    System  
  Volume 2     C   Windows      NTFS   Partition    689 GB  Healthy    Boot  
  Volume 3     D   HP_TOOLS     FAT32  Partition   2056 MB  Healthy  
  Volume 4                      RAW    Partition   7148 MB  Healthy    Hidden  
  
DISKPART>

```