#!/bin/bash

HOST=mabwaf-bdd1
DATABASE=waf_editorial
SOURCE_DB="$DATABASE"
HOST_USER=$SOURCE_DB
HOST_PASS=$SOURCE_DB
BASEDIR=$(cd "$(dirname "$0")" && pwd)
TARGETDIR="$BASEDIR/../db/mysql/"
LOCAL_USER=root

echo "Dumping $DATABASE"
mysqldump --compress --quick --skip-add-locks --single-transaction -h $HOST -u $HOST_USER -p$HOST_PASS $SOURCE_DB --no-data > ${TARGETDIR}/${DATABASE}-structure.sql
mysqldump --compress --quick --skip-add-locks --single-transaction -h $HOST -u $HOST_USER -p$HOST_PASS $SOURCE_DB forms_emails forms_fields forms_items news_categories news_domains news_domains_sites news_magazines news_targets news_types  > ${TARGETDIR}/${DATABASE}-data.sql

exit

echo "done"

exit
