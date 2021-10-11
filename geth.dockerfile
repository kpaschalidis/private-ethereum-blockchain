FROM ethereum/client-go:latest

# Copy the genesis.json into the image and initialize the genesis block
COPY genesis.json /tmp
RUN geth init /tmp/genesis.json

# Remove the nodekey file
RUN rm -f ~/.ethereum/geth/n

# Generate a new account and remove the password for security purpose
RUN echo ${ACCOUNT_PASSWORD} > /tmp/password \
    && geth account new --password /tmp/password \
    && rm -f /tmp/password

# Start geth
ENTRYPOINT ["geth"]
