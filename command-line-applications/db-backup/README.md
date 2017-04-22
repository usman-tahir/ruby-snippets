# db-backup

## Overview
This command line application allows for the backing up of MySQL database
contents. When the command line arguments are supplied for the database, the
database is accessed through the `mysqldump` command, using the database name,
the username, and the password relevant to the database. The contents of that
database are stored into a file, which is then zipped using `gzip`, and then
stored locally.

To use this application, remove the comment from line 14 of the file, and make
sure that the `mysqldump` command is supported from your CLI.

## Iterations
The iteration command line argument is used to denote different iteration
backups that might have been made for a given database, and as such, would not
add the timestamp data to the end of the output file.
