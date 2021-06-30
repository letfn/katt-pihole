pihole.yaml: clean/pihole.yaml
	kustomize build clean > $@

clean/pihole.yaml:
	-helm repo add mojo2600 https://mojo2600.github.io/pihole-kubernetes
	helm repo update
	helm template pihole mojo2600/pihole --version 2.0.0 --namespace=pihole --values clean/values.yaml > $@
