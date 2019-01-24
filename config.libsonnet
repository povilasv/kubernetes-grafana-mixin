{
  _config+:: {
    // Selectors are inserted between {} in Prometheus queries.
    kubeletSelector: 'job="kubelet"',
    kubeSchedulerSelector: 'job="kube-scheduler"',
    kubeControllerManagerSelector: 'job="kube-controller-manager"',
    kubeApiserverSelector: 'job="kube-apiserver"',
    podLabel: 'pod',
    namespaceSelector: null,
    prefixedNamespaceSelector: if self.namespaceSelector != null then self.namespaceSelector + ',' else '',

    // Grafana dashboard IDs are necessary for stable links for dashboards
    grafanaDashboardIDs: {
      'kube-apiserver.json': 'eswbt59QCroA3XLdKFvdOHlKB8Iks3h7d2ohstxr',
    },

    // For links between grafana dashboards, you need to tell us if your grafana
    // servers under some non-root path.
    grafanaPrefix: '',
  },
}
