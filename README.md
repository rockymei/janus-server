# janus-server

Assuming Docker and Docker Compose are installed:

Build the image

```shell
$ docker build -t janus-gateway:1.1 .
```

Run the container

```shell
$ DOCKER_IP=<THE IP OF YOUR DOCKER> docker run -p 80:80 -p 443:443 -p 7088:7088 -p 8088:8088 -p 8089:8089 -p 8188:8188 -p 10000-10200:10000-10200/udp janus-gateway:1.1
```

Where `DOCKER_IP` is the public IP address where Docker services can be reached. This will be used by Janus to send back the right IP to Web clients (ICE candidates) so that they can communicate with Janus correctly.

That's it!

Where ports:
  - **80**: expose janus documentation and admin/monitoring website
  - **443**: expose janus documentation and demo https website
  - **7088**: expose Admin/monitor server
  - **8088**: expose Janus server
  - **8089**: expose Janus server on https
  - **8188**: expose Websocket server
  - **10000-10200/udp**: Used during session establishment

