https://codingwithmanny.medium.com/configure-self-signed-ssl-for-nginx-docker-from-a-scratch-7c2bcd5478c6

1. Run `docker run -p 8081:80 -p 1443:443 nginx-tls`
2. To make the domain work, add `127.0.0.1 mydomain.com` to /etc/hosts.
3. Either run curl or go to the browser. If curl, https should work with `curl https://localhost:1443 --insecure`