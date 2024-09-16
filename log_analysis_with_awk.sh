awk -v date="$(date --date="yesterday" '+%Y-%m-%d')" '$0 ~ date && $0 ~ /Failure/ {count++} END {print count}' /var/log/webapp/access.log
