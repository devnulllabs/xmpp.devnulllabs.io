OPTS="--no-cache"
TAG="xmpp.devnulllabs.io"
all: build

build:
	@docker build ${OPTS} -t ${TAG} `pwd`

start:

stop:
	@docker kill prosody
