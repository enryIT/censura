#!/bin/sh -e

. $(dirname "${0}")/censorship_params.sh

LIST_FILE="${ROOT_DIR}/blacklist_piracyshield.txt"
LIST_OUT="${UNBOUND_CONF_DIR}/db.blacklist_piracyshield.conf"
LIST_TYPE="piracyshield"

BLACKHOLE="178.250.66.202" #Replace with the chosen IP address
PARSER_BIN="${ROOT_DIR}/censor_parser.py"
PARSER_OPTS="-i ${LIST_FILE} -o ${LIST_OUT} -f ${OUTPUT_FORMAT} -d ${LIST_TYPE} -b ${BLACKHOLE}"

##############################################################################
${PARSER_BIN} ${PARSER_OPTS}
