FROM debian:bookworm-slim
ARG TARGETPLATFORM
RUN echo "I'm building for $TARGETPLATFORM"

RUN apt remove -y perl && \
	apt remove -y gnupg2
RUN apt autoremove -y

RUN apt update && \
    apt install -y git && \
    apt install -y golang-go
RUN apt autoremove -y