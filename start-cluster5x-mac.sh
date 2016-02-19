#!/bin/bash

PWD=$(pwd)
PWD_PATH=$(./readlinkf.sh $PWD)
SCRIPT_PATH=$(./readlinkf.sh $0)
SCRIPT_NAME=$(basename $0)
SCRIPT_DIR=$(dirname $SCRIPT_PATH)

if [ "$SCRIPT_DIR" == "$PWD" ]
then
	export SZD_HOME="$SCRIPT_DIR"
        export ZK_CLUSTER_SIZE=3
        export SOLRCLOUD_CLUSTER_SIZE=3
	$SZD_HOME/sbin/common.sh
	$SZD_HOME/sbin/start-zookeeper-cluster.sh
	$SZD_HOME/sbin/start-solrcloud5-cluster.sh
else
	echo ""
	echo "execute:"
	echo ""
	echo "  cd "$SCRIPT_DIR
	echo "  ./"$SCRIPT_NAME
	echo ""
fi

