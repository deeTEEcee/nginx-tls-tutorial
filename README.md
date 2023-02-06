https://codingwithmanny.medium.com/configure-self-signed-ssl-for-nginx-docker-from-a-scratch-7c2bcd5478c6

(If we want to generate a new cert, run `openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" -addext "subjectAltName=DNS:mydomain.com" -newkey rsa:2048 -keyout nginx-selfsigned.key -out nginx-selfsigned.crt`)

1. Run `docker run -p 8081:80 -p 1443:443 --name nginx-tls --rm nginx-tls`
2. To make the domain work, add `127.0.0.1 mydomain.com` to /etc/hosts.
3. Either run curl or go to the browser. If curl, https should work with `curl https://localhost:1443 --insecure`