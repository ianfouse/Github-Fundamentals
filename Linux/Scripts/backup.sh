mkdir -p /var/backups
sudo tar cvzf /var/backups/home_backup.tar.gz /home
sudo mv /var/backups/home.tar.gz /var/backups/home.last.tar.gz
sudo tar cvzf /var/backups/syste.tar.gz /home
sudo ls -lh /var/backups > /var/backups/file_report.txt
sudo free -h > /var/backups/disk_report.txt
