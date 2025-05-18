help:
	@echo "target  purpose"
	@echo "-------------------------------------------"
	@echo "check   "
	@echo "publish "

publish:
	cp html/index.html /var/www/html/index.html
	cp html/internal/index.html /var/www/html/internal/index.html
	cp html/internal/favicon.ico /var/www/html/internal/favicon.ico
	cp html/favicon.ico /var/www/html/favicon.ico
	cp cv/cv.pdf /var/www/html/cv.pdf
	cp config/sshnotify.sh /etc/ssh/sshnotify.sh
	cp nginx/nginx.conf /etc/nginx/nginx.conf
	cp nginx/mime.types /etc/nginx/mime.types
	cp nginx/default /etc/nginx/sites-enabled/default
	cp nginx/nginx_jh.conf /etc/nginx/sites-enabled/nginx_jh.conf

check:
	-diff html/index.html /var/www/html/index.html
	-diff html/internal/index.html /var/www/html/internal/index.html
	-diff html/internal/favicon.ico /var/www/html/internal/favicon.ico
	-diff html/favicon.ico /var/www/html/favicon.ico
	-diff cv/cv.pdf /var/www/html/cv.pdf
	-diff config/sshnotify.sh /etc/ssh/sshnotify.sh
	-diff nginx/nginx.conf /etc/nginx/nginx.conf
	-diff nginx/mime.types /etc/nginx/mime.types
	-diff nginx/default /etc/nginx/sites-enabled/default
	-diff nginx/nginx_jh.conf /etc/nginx/sites-enabled/nginx_jh.conf
