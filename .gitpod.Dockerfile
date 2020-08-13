FROM gitpod/workspace-full

ENV GO2GO_REPO=https://github.com/golang/go.git
ENV GO2GO_BRANCH=dev.go2go

RUN git clone $GO2GO_REPO go2go
RUN cd go2go ; git checkout $GO2GO_BRANCH ; cd src ; bash make.bash

USER gitpod
