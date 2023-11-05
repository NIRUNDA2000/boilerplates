#### Export and import with compress


```
mysqldump -u username -p database_name | gzip -c > database_name.sql.gz
```

```
gunzip < database_name.sql.gz | mysql -u username -p database_name
```
