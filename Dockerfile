# DVinyl on Railway: the official ghcr.io/kyonew/dvinyl:4.0.0 image (MIT), application unmodified.
# Railway layer: listens on 8080, runs in HTTPS mode behind Railway's proxy, and keeps uploads on the
# same /app/data volume as the SQLite database. The first-run setup page is protected by SETUP_TOKEN.
FROM ghcr.io/kyonew/dvinyl:4.0.0
LABEL org.opencontainers.image.source="https://github.com/onepush-dev/dvinyl"
COPY --chmod=755 railway/start.sh /railway-start.sh
ENV VINYL_PORT=8080 \
    PROD=true
EXPOSE 8080
CMD ["/railway-start.sh"]
