# Fix because the image doesn't support running as non root user

FROM pawelmalak/flame:2.3.1

RUN chown -R 1000:1000 .

USER 1000:1000

CMD ["node", "server.js"]
