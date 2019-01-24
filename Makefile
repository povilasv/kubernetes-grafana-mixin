JSONNET_FMT := jsonnet fmt -n 2 --max-blank-lines 2 --string-style s --comment-style s

all: fmt dashboards_out

fmt:
	find . -name 'vendor' -prune -o -name '*.libsonnet' -print -o -name '*.jsonnet' -print | \
		xargs -n 1 -- $(JSONNET_FMT) -i

dashboards_out: mixin.libsonnet lib/dashboards.jsonnet dashboards/*.libsonnet
	@mkdir -p dashboards_out
	jsonnet -J vendor -m dashboards_out lib/dashboards.jsonnet

clean:
	rm -rf dashboards_out
