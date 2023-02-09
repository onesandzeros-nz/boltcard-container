# Boltcard Docker Container

### install Docker

- [Docker engine download &
   install](https://docs.docker.com/engine/install/)
   
### https setup

set up the domain A record to point to the server

set up the server hosting firewall to allow open access to https (port 443) only

### pre setup
- Make a .env file (copy the .env.example file and change the variable values)
- Edit `Caddyfile` to set the boltcard domain name

### service bring-up and running
```
$ sudo groupadd docker
$ sudo usermod -aG docker ${USER}
(log out & in again)
$ docker volume create caddy_data
$ docker volume create frontend_assets
// add -d option for detached mode
$ docker compose up
```
- Go to `https://yourdomain.com:8080/dev/build` 
- After the database has been built, `https://yourdomain.com:8080` should work. Use your admin login details in `.env` file to login.
- Edit settings for boltcard service and upload the LND TLS cert and the LND macaroon file in the settings(`https://yourdomain.com:8080/settings`) page. [Bolt card system settings](https://github.com/boltcard/boltcard/blob/main/docs/SETTINGS.md)


### stop docker
```
$ docker compose down
```
To delete the database and reset the docker volume, run `docker-compose down --volumes`
*NOTE:  caddy_data volume won't be removed even if you run `docker-compose down --volumes` because it's an external volume.*  

### check container logs

- [Docker Logs](https://docs.docker.com/engine/reference/commandline/logs/)

```
$ docker logs [OPTIONS] CONTAINER
```

Run `$ docker ps` to list containers and get container names/ids

