FROM alpine

COPY . /app
WORKDIR /app 

RUN apk update 
RUN apk --no-cache add wget

CMD ["sh", "grab.sh"]
