FROM gitpod/workspace-full

ENV GO2GO_REPO=https://github.com/golang/go.git
ENV GO2GO_BRANCH=dev.go2go
ENV GO2GO_DIR=go2go
RUN git clone $GO2GO_REPO $GO2GO_DIR

WORKDIR $HOME/$GO2GO_DIR

RUN git checkout $GO2GO_BRANCH
RUN cd src ; ./make.bash
ENV PATH=$HOME/$GO2GO_DIR/bin:$PATH

USER gitpod