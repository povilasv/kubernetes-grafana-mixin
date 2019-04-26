JSONNET_FMT := jsonnet fmt -n 2 --max-blank-lines 2 --string-style s --comment-style s

all: fmt dashboards_out

setup_jsonnet:
	bash setup_jsonnet.sh

setup:
	go get -u github.com/jsonnet-bundler/jsonnet-bundler/cmd/jb

setup_all: setup_jsonnet setup

fmt:
	find . -name 'vendor' -prune -o -name '*.libsonnet' -print -o -name '*.jsonnet' -print | \
		xargs -n 1 -- $(JSONNET_FMT) -i

dashboards_out: mixin.libsonnet lib/dashboards.jsonnet dashboards/*.libsonnet
	@mkdir -p dashboards_out
	jsonnet -J vendor -m dashboards_out lib/dashboards.jsonnet

clean:
	rm -rf dashboards_out
