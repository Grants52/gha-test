FROM node:12


RUN npm install -g verdaccio && \
	  npm install -g verdaccio-auth-memory && \
		npm install -g verdaccio-memory && \
		npm install -g npm-auth-to-token@1.0.0

COPY config.yaml /config.yaml

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
