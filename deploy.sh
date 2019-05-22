#!/bin/bash
npm run build
# ssh root@120.78.177.9 "mkdir /usr/local/nginx/supermarket-front"
scp -r ./dist/* root@120.78.177.9:/usr/local/nginx/cdn-front/libs/yunser-ui-vue/0.1.27
