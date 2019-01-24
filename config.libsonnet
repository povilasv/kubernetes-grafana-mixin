{
  _config+:: {
    // Selectors are inserted between {} in Prometheus queries.
    kubeletSelector: 'job="kubernetes-nodes"',
    kubeSchedulerSelector: 'job="kube-scheduler"',
    kubeControllerManagerSelector: 'job="kube-controller-manager"',
    kubeApiserverSelector: 'job="kube-apiserver"',
    kubeProxySelector: 'job="kube-proxy"',

    // Grafana dashboard IDs are necessary for stable links for dashboards
    grafanaDashboardIDs: {
      'kube-apiserver.json': 'eswbt59QCroA3XLdKFvdOHlKB8Iks3h7d2ohstxr',
      'kube-controller-manager.json': '5g73oHG0pCRz4X1t6gNYouVUv9urrQd4wCdHR2mI',
      'kube-scheduler.json': '4uMPZ9jmwvYJcM5fcNcNrrt9Sf6ufQL4IKFri2Gp',
      'kube-proxy.json': 'hhT4orXD1Ott4U1bNNps0R26EHTwMypdcaCjDRPM',
      'kubelet.json': 'B1azll2ETo7DTiM8CysrH6g4s5NCgkOz6ZdU8Q0j',
    },

    // For links between grafana dashboards, you need to tell us if your grafana
    // servers under some non-root path.
    grafanaPrefix: '',
  },
}
