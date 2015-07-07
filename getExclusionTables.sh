#!/bin/bash
# https://github.com/CHGLongStone/mysql-db-sync
# Jason Medland <jason.medland@gmail.com>


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#echo -e " ${red}DONE DIR${NC}"$DIR


getTableList(){
if [ ! -z "$1" ]; then
	#echo -e "${green}DB  ${NC}'"$1"'"
	DBNAME=$1
else
	DBNAME="JCORE"
fi

for tablename in `cat $DIR/skiplist`; do 	echo -n "--ignore-table=$DBNAME.$tablename " 
done


}



