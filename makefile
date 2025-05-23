help:
	@echo "target  purpose"
	@echo "-------------------------------------------"
	@echo "check   "
	@echo "publish "

publish:
	cp nginx/nginx.conf /etc/nginx/nginx.conf
	cp nginx/mime.types /etc/nginx/mime.types
	cp nginx/default /etc/nginx/sites-enabled/default
	cp nginx/nginx_jh.conf /etc/nginx/sites-enabled/nginx_jh.conf

check:
	-diff nginx/nginx.conf /etc/nginx/nginx.conf
	-diff nginx/mime.types /etc/nginx/mime.types
	-diff nginx/default /etc/nginx/sites-enabled/default
	-diff nginx/nginx_jh.conf /etc/nginx/sites-enabled/nginx_jh.conf
