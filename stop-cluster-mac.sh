#!/bin/bash

PWD=$(pwd)
PWD_PATH=$(./readlinkf.sh $PWD)
SCRIPT_PATH=$(./readlinkf.sh $0)
SCRIPT_NAME=$(basename $0)
SCRIPT_DIR=$(dirname $SCRIPT_PATH)

if [ "$SCRIPT_DIR" == "$PWD" ]
then
	export SZD_HOME="$SCRIPT_DIR"
	$SZD_HOME/sbin/common.sh
	$SZD_HOME/sbin/stop-all.sh
	sleep 5
	$SZD_HOME/sbin/remove-all.sh
else
	echo ""
	echo "execute:"
	echo ""
	echo "  cd "$SCRIPT_DIR
	echo "  ./"$SCRIPT_NAME
	echo ""
fi

