ARG SHOUTRRR_VERSION
FROM containrrr/shoutrrr:${SHOUTRRR_VERSION} as builder

FROM alpine:3.17 as final
COPY --from=builder /shoutrrr /usr/sbin/shoutrrr
ENTRYPOINT ["shoutrrr"]