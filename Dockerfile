FROM fusuf/whatsasena:latest

RUN git clone https://github.com/Nasif40/Niyamwol-v1 /root/Niyamwol-v1
WORKDIR /root/Niyamwol-v1
ENV TZ=Asia/Kolkata
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "index.js"]
