# Version 1.1
# 基础镜像
FROM linagora/janus-gateway
# 镜像操作命令
COPY janus.js /opt/janus/share/janus/javascript/janus.js
COPY janus.js /root/janus-gateway/html/janus.js
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 443 8089
