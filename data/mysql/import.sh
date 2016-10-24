USER="root"
PASSWORD="root"
BACKUPPATH = "sql/"

cd sql/
for SQL in *.sql
do
  DB=${SQL/\.sql/};
  echo "Restauration file=$SQL : Db = $DB"
  mysql -u $USER -p$PASSWORD < $SQL
done
