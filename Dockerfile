FROM alpine:3.20

ARG API_URL
ARG MY_FLAG

ENV API_URL=${API_URL} \
    MY_FLAG=${MY_FLAG}

WORKDIR /app
COPY app.sh /app/app.sh
RUN chmod +x /app/app.sh

CMD ["/app/app.sh"]
