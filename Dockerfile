FROM nginxinc/nginx-unprivileged:stable-alpine

COPY docker/nginx.conf /etc/nginx/conf.d/default.conf
COPY --chown=101:101 index.html app.js demo-data.js styles.css styles-extra.css /usr/share/nginx/html/
COPY --chown=101:101 assets/ /usr/share/nginx/html/assets/

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD wget -q -O /dev/null http://127.0.0.1:8080/healthz || exit 1
