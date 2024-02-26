```
[client]
#password	= your_password
port		= 3306
socket		= /tmp/mysql.sock

[mysqld]
port		= 3306
socket		= /tmp/mysql.sock
datadir = /www/server/data
default_storage_engine = InnoDB
skip-external-locking
key_buffer_size = 128M
max_allowed_packet = 100G
table_open_cache = 512
sort_buffer_size = 2M
net_buffer_length = 4K
read_buffer_size = 2M
read_rnd_buffer_size = 256K
myisam_sort_buffer_size = 32M
thread_cache_size = 64
query_cache_size = 64M
tmp_table_size = 64M

#skip-name-resolve
max_connections = 500
max_connect_errors = 100
open_files_limit = 65535

log-bin=mysql-bin
binlog_format=mixed
server-id = 1
expire_logs_days = 10
slow_query_log=1
slow-query-log-file=/www/server/data/mysql-slow.log
long_query_time=3
#log_queries_not_using_indexes=on


innodb_data_home_dir = /www/server/data
innodb_data_file_path = ibdata1:10M:autoextend
```
