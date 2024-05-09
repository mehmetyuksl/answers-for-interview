FROM alpine:latest

COPY cleanup-evicted-pods.sh /cleanup-evicted-pods.sh
RUN chmod +x /cleanup-evicted-pods.sh

ENTRYPOINT ["/cleanup-evicted-pods.sh"]