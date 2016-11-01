up:
	docker-compose up -d	
down:
	docker-compose down --remove-orphans
remote:
	ssh -fNR 2001:127.0.0.1:22 -p 2222 vpn

# http://www.py-my.ru/post/4d1465a31d41c81a2d000005
# passwd
# ssh-keygen
# ssh-copy-id