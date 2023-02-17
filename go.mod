module github.com/kubeflow/arena

go 1.12

require (
	github.com/docker/docker v20.10.12+incompatible
	github.com/golang/glog v1.0.0
	github.com/google/gofuzz v1.2.0 // indirect
	github.com/google/uuid v1.3.0
	github.com/imdario/mergo v0.3.13 // indirect
	github.com/kubeflow/common v0.4.6
	github.com/mitchellh/go-homedir v1.1.0
	github.com/onsi/ginkgo/v2 v2.1.4
	github.com/onsi/gomega v1.19.0
	github.com/prometheus/client_golang v1.12.2
	github.com/prometheus/common v0.32.1
	github.com/sirupsen/logrus v1.8.1
	github.com/spf13/cobra v1.4.0
	github.com/spf13/viper v1.8.1
	github.com/stretchr/testify v1.8.0
	go.uber.org/atomic v1.9.0 // indirect
	go.uber.org/multierr v1.8.0 // indirect
	go.uber.org/zap v1.21.0 // indirect
	//github.com/stretchr/testify v1.4.0
	gopkg.in/yaml.v2 v2.4.0
	istio.io/api v0.0.0-20180824201241-76349c53b87f
	k8s.io/api v0.25.3
	k8s.io/apiextensions-apiserver v0.25.0
	k8s.io/apimachinery v0.25.3
	k8s.io/cli-runtime v0.24.3
	k8s.io/client-go v0.25.3
	k8s.io/kube-openapi v0.0.0-20220803162953-67bda5d908f1
	k8s.io/kubectl v0.0.0
	k8s.io/utils v0.0.0-20220728103510-ee6ede2d64ed
	sigs.k8s.io/controller-runtime v0.13.0
)

replace (
	github.com/alibabacloud-go/cs-20151215 => ./dependency/cs-20151215
	golang.org/x/sys => golang.org/x/sys v0.2.0
	k8s.io/api => k8s.io/api v0.24.3
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.24.3
	k8s.io/apimachinery => k8s.io/apimachinery v0.24.3
	k8s.io/apiserver => k8s.io/apiserver v0.24.3
	k8s.io/cli-runtime => k8s.io/cli-runtime v0.24.3
	k8s.io/client-go => k8s.io/client-go v0.24.3
	k8s.io/cloud-provider => k8s.io/cloud-provider v0.24.3
	k8s.io/cluster-bootstrap => k8s.io/cluster-bootstrap v0.24.3
	k8s.io/code-generator => k8s.io/code-generator v0.24.3
	k8s.io/component-base => k8s.io/component-base v0.24.3
	k8s.io/component-helpers => k8s.io/component-helpers v0.24.3
	k8s.io/controller-manager => k8s.io/controller-manager v0.24.3
	k8s.io/cri-api => k8s.io/cri-api v0.24.3
	k8s.io/csi-translation-lib => k8s.io/csi-translation-lib v0.24.3
	k8s.io/kube-aggregator => k8s.io/kube-aggregator v0.24.3
	k8s.io/kube-controller-manager => k8s.io/kube-controller-manager v0.24.3
	k8s.io/kube-proxy => k8s.io/kube-proxy v0.24.3
	k8s.io/kube-scheduler => k8s.io/kube-scheduler v0.24.3
	k8s.io/kubectl => k8s.io/kubectl v0.24.3
	k8s.io/kubelet => k8s.io/kubelet v0.24.3
	k8s.io/legacy-cloud-providers => k8s.io/legacy-cloud-providers v0.24.3
	k8s.io/metrics => k8s.io/metrics v0.24.3
	k8s.io/mount-utils => k8s.io/mount-utils v0.24.3
	k8s.io/pod-security-admission => k8s.io/pod-security-admission v0.24.3
	k8s.io/sample-apiserver => k8s.io/sample-apiserver v0.24.3
	sigs.k8s.io/controller-runtime => sigs.k8s.io/controller-runtime v0.12.2
)
