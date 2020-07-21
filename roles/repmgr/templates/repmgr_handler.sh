EVENT="$2"

if [[ "$EVENT" =~ ^(standby_clone|standby_clone)$ ]]; then
    #systemctl start postgresql-10.service
	#postgres   ALL=NOPASSWD:/usr/sbin/service postgresql-10.service *
	sudo service postgresql-{{postgresql_version}}.service start
	#pg_ctl start #just in case long running cloning
    #systemctl list-units|grep postgresql    
fi

