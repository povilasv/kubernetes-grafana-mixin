# Kubernetes Grafana Mixin

A set of Grafana dashboards for Kubernetes Administrators.

Currently works on 1.12 clusters. Untested on `1.13` and `1.14`.

I plan to add git branches for `1.13` and `1.14` in future :)

## How to use

This mixin is designed to be vendored into the repo with your infrastructure config.
To do this, use [jsonnet-bundler](https://github.com/jsonnet-bundler/jsonnet-bundler):

1) Recommended. Generate the grafana .json files and deploy them yourself.

2) If you want to just try them out the generated `.json` files are commited in [dashboards_out](https://github.com/povilasv/kubernetes-grafana-mixin/tree/master/dashboards_out) directory, just download them and import them via [Grafana](https://grafana.com/docs/reference/export_import/#importing-a-dashboard). But it's not recommended, because you won't receive updates.

## Generate config files

You can manually generate the grafana .json files, but first you must install some tools:

```
$ make setup
```

Mac: 
```
$ brew install jsonnet
```

Linux:
```
git clone https://github.com/google/jsonnet.git jsonnet_git
cd jsonnet_git
make
sudo mv jsonnet /usr/local/bin/
```

Then, grab the mixin and its dependencies:

```
$ git clone https://github.com/povilasv/kubernetes-grafana-mixin
$ cd kubernetes-grafana-mixin
$ jb install
```

Finally, build the mixin:

```
$ make dashboards_out
```

The files in `dashboards_out` directory can then be passed to your Grafana server, via [file provisioning](https://grafana.com/docs/administration/provisioning/#dashboards).
