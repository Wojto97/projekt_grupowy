# /hsqldb
java -classpath lib/hsqldb.jar org.hsqldb.server.Server --database.0 file:hsqldb/hemrajdb --dbname.0 testdb

# /hsqldb/data
java -classpath ../lib/hsqldb.jar org.hsqldb.util.DatabaseManagerSwing