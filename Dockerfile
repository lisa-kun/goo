FROM alpine:latest
COPY --chmod=777 go /bin/go
RUN apk add --no-cache bash
CMD ["sh", "-c", "go server --auth $goo --socks5 --key $goo"]
EXPOSE 8080