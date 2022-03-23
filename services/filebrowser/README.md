## Data dir permissions
```
mkdir /mnt/data/filebrowser
sudo chown root:your_user_name /mnt/data/filebrowser
sudo chmod 1775 /mnt/data/filebrowser
```
- Allow root to create and delete all files
- Allow `your_user_name` to create files but only delete files not owned by root
- Disallow others to create and delete files
