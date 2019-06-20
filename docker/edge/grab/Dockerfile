FROM alpine

COPY . /app
WORKDIR /app 

RUN apk update && apk --no-cache add bash
RUN apk --no-cache add wget

CMD bash ./grab.sh
