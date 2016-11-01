up:
	docker-compose up -d	
down:
	docker-compose down --remove-orphans
remote:
	ssh -fNR 2001:127.0.0.1:22 -p 2222 rhost
# http://www.py-my.ru/post/4d1465a31d41c81a2d000005
# passwd
# ssh-keygen
# ssh-copy-id

# ================================================ SSH BACKDOOR FOR CLIENT
Host vpn
	# https://github.com/webmalex/docker-sshd
	HostName vpn.orienteer.ru
	User root
	Port 2222
Host vpn1
	# ssh -fNR 2001:127.0.0.1:22 -p 2222 vpn.orienteer.ru
	HostName localhost
	User root
	Port 2001
	StrictHostKeyChecking no
	ProxyCommand ssh vpn nc %h %p