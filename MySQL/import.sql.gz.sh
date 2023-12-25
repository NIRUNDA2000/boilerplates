#!/bin/bash

# Set the directory containing .sql.gz files
sql_directory="/path/to/sql/files"

# MySQL/MariaDB connection parameters
mysql_user="your_username"
mysql_password="your_password"
mysql_host="localhost"

# Function to perform database creation and import within a transaction
perform_transaction() {
    dbname="$1"
    sql_file="$2"

    # Start a transaction
    mysql -u "$mysql_user" -p"$mysql_password" -h "$mysql_host" -e "START TRANSACTION;"

    # Create the database with backticks around the name
    mysql -u "$mysql_user" -p"$mysql_password" -h "$mysql_host" -e "CREATE DATABASE IF NOT EXISTS \`$dbname\`;"

    # Import the data into the database
    gunzip -c "$sql_file" | mysql -u "$mysql_user" -p"$mysql_password" -h "$mysql_host" "$dbname"

    if [ $? -eq 0 ]; then
        # Commit the transaction if successful
        mysql -u "$mysql_user" -p"$mysql_password" -h "$mysql_host" -e "COMMIT;"
        echo "Database $dbname created and imported successfully."
    else
        # Roll back the transaction on error
        mysql -u "$mysql_user" -p"$mysql_password" -h "$mysql_host" -e "ROLLBACK;"
        echo "Error occurred. Changes rolled back for database $dbname."
    fi
}

# Iterate through each .sql.gz file in the directory
for sql_file in "$sql_directory"/*.sql.gz; do
    # Extract the file name (excluding path and extension)
    filename=$(basename -- "$sql_file")
    dbname="${filename%.sql.gz}"

    echo "Creating and importing database: $dbname"

    # Perform operations within a transaction
    perform_transaction "$dbname" "$sql_file"
done
