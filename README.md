# Kubernetes Grafana mixin

A set of Grafana dashboards for Kubernetes Administrators.

Currently works on 1.12 clusters. I plan to add git branches for `1.13` and `1.14` in future :)

## How to use

This mixin is designed to be vendored into the repo with your infrastructure config.
To do this, use [jsonnet-bundler](https://github.com/jsonnet-bundler/jsonnet-bundler):

1) Recommended. Generate the grafana .json files and deploy them yourself.

2) If you want to just try them out the generated `.json` files are commited in [dashboards_out]() directory, just download them and import them via [Grafana](https://grafana.com/docs/reference/export_import/#importing-a-dashboard).

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
sudo snap install jsonnet
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

The files in `dashboards_out` directory can then be passed to your Grafana server, via [file provisioning](https://grafana.com/docs/administration/provisioning/#dashboards)

You can also import them via Grafana UI, but it's not recommeneded as you will have to update them manually.
