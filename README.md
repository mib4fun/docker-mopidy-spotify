docker.io Mopidy - Spotify MPD Server
=====================================

Simple MPD server with Spotify connection.

**Currently non-functional. Working on Pulseaudio integration**


Configure it
------------

Edit the `mopidy.conf` to fit your needs. You need to at least enter your Spotify details.
For complete configuration options, see http://docs.mopidy.com/en/latest/config/


Pull the image it
--------

`docker pull mib4fun/modipy-spotify`


Run it
------

Replace the variables

```bash
USERNAME=$1
PASSWORD=$2
CLIENT_ID=$3
CLIENT_SECRET=$4

docker run \
     -p 6600:6600 \
     -p 6680:6680 \
     -e USERNAME=$USERNAME \
     -e PASSWORD=$PASSWORD \
     -e CLIENT_ID=$CLIENT_ID \
     -e CLIENT_SECRET=$CLIENT_SECRET \
      mib4fun/modipy-spotify
```


Or build it
------------

```bash
git clone https://github.com/mib4fun/docker-mopidy-spotify
cd docker-modipy-spotify
docker build -t . modipy-spotify
```


Ports
-----

* `6600` - MPD server
* `6680` - HTTP server
