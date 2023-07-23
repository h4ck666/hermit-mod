FROM quay.io/hermit/hermit-ser:latest

RUN git clone https://github.com/h4ck666/hermit-mod /root/hermit-mod
WORKDIR /root/hermit-mod/
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
