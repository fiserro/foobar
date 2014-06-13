export HADOOP_ROOT_LOGGER="DEBUGm,console"
#export HADOOP_CLASSPATH=`pwd`/kite-morphlines-protobuffer.jar:`pwd`/protobuf-test.jar:$HADOOP_CLASSPATH
export HADOOP_CLASSPATH=`pwd`/lib/**:`pwd`/lib/protobuf-test.jar:$HADOOP_CLASSPATH
hadoop jar hbase-indexer-mr-*-job.jar --zk-host hadoop-master:2181/solr --collection collection1 --hbase-indexer-file demo-indexer.xml --morphline-file demo-morphlines.conf --reducers 0

