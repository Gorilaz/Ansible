. /home/{{ postgresql_user }}/.bash_profile
if [ "$(psql -qAtX -c 'select pg_is_in_recovery()')" == "f" ]; then pgbackrest --stanza={{ groups['pgmaster'][0] }} --log-level-console=info --type=full backup; fi
