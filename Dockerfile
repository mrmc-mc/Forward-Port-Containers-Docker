FROM alpine


WORKDIR /app

RUN apk update && apk add socat

EXPOSE 80
EXPOSE 22222

 
CMD [ "socat", "TCP-LISTEN:80,fork","TCP:mc82:22222 &" ]
