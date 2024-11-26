#!/bin/bash
#script to backup database
DATE
DB_BACKUP_PATH= '/backup/dbbackup'
DB_USER= 'root'
DB_PASS= 'password'
DB_NAME= 'mydb'

mkdir -p ${DB_BACKUP_PATH}/${DATE}
mysqldump -u${DB_USER}  -p${DB_PASS}  ${DB_NAME} > ${DB_BACKUP_PATH}/${DATE}/${DB_NAME}.sql
echo "Backup complete for database ${DB_NAME}."

#!/bin/bash
#script to backup using rsync

backup_dir= "/backup"
source_dir= "/var/www/html"
#creat a backuo directory
mkdir -p "$backup_dir"
# perform the backup
rsync -av "$source_dir" "backup_dir"

