FROM gitpod/workspace-full

ENV GO2GO_REPO=https://github.com/golang/go.git
ENV GO2GO_BRANCH=dev.go2go

RUN git clone $GO2GO_REPO
RUN git checkout $GO2GO_BRANCH

USER gitpod
