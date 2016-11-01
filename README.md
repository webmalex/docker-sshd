# SSHD BACKDOOR

Minimal Alpine Linux Docker container with `sshd` exposed.
Mount your .ssh credentials (RSA public keys) at `/root/.ssh/` in order to access the container via root ssh.
Optionally mount a custom sshd config at `/etc/ssh/`.

## Usage Example

on server
```
make up
````
on local client
```
ssh vpn passwd
````
on remote client (need sshd)
```
ssh-keygen
ssh-copy-id vpn
make remote
````
now local client can access to remote client 
```
ssh vpn1
````
