main:
	docker-compose up -d	

remote:
	ssh -NR 3333:127.0.0.1:22 -p 2222 rhost

# -r http://www.py-my.ru/post/4d1465a31d41c81a2d000005
# passwd
# ssh-keygen
# ssh-copy-id