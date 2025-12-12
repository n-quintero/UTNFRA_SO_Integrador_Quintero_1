#!/bin/bash

RUTA_LISTADO="$1"

DIR_BASE="/tmp/head-check"

DIR_LOG="/var/log/status_URL.log"

if [ -z "$RUTA_LISTADO" ]; then
	echo "Debe selecccionar una ruta del archivo Lista_URL.txt"
	exit 1

fi

mkdir -p "$DIR_BASE/Error/cliente" "$DIR_BASE/Error/servidor" "$DIR_BASE/ok"

while IFS= read -r URL; do

	STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}\n" "$URL")
	TIMESTAMP=$(date +%Y%m%d_%H%M%S)
	LOG_LINE="$TIMESTAMP - Code:$STATUS_CODE - URL:$URL"
	echo "$LOG_LINE" >> "$DIR_LOG"

	DOMAIN=$(echo "$URL" | awk -F[/:] '{print $4}')
	if [ -z "$DOMAIN" ]; then
		DOMAIN=$(echo "$URL" | sed 's/[^a-zA-Z0-9._-]/_/g')
	fi

	FILE_NAME_BASE=$(echo "$DOMAIN" | sed -E 's/\.(com|org|net|etc)$//' | sed -E 's/^www\.//')
	
	LOG_FILE="${FILE_NAME_BASE}.log"
	case "$STATUS_CODE" in
		200)
			echo "$LOG_LINE" >> "$DIR_BASE/ok/$LOG_FILE"
			;;
		4[0-9][0-9])
			echo "$LOG_LINE" >> "$DIR_BASE/Error/cliente/$LOG_FILE"
			;;
		5[0-9][0-9])
			echo "$LOG_LINE" >> "$DIR_BASE/Error/servidor/$LOG_FILE"
			;;
		*)
			echo "$LOG_LINE" >> "$DIR_BASE/Error/noexiste.log"

	esac
done < "$RUTA_LISTADO"

echo "Proceso de URL Completado. Verifique los logins en $DIR_LOG Y $DIR_BASE"



