FROM owasp/modsecurity-crs:3.3.2-nginx-alpine

USER root
# PIDファイルや一時ファイルの権限を nginx ユーザーに開放
RUN chown -R nginx:nginx /var/cache/nginx /var/log/nginx /etc/nginx /var/run/ /run/
USER nginx