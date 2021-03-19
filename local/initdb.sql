RENAME USER 'root'@'%' TO 'admin'@'10.0.26.%';
RENAME USER 'appdev'@'%' TO 'appdev'@'10.0.26.%';

GRANT ALL PRIVILEGES ON testdb.* TO 'appdev'@'10.0.26.%';
GRANT SELECT ON mysql.db TO 'appdev'@'10.0.26.%';

FLUSH PRIVILEGES;