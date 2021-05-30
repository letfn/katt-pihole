pihole.yaml: clean/pihole.yaml
	kustomize build clean > pihole.yaml

clean/pihole.yaml:
	-helm repo add mojo2600 https://mojo2600.github.io/pihole-kubernetes
	helm repo update
	helm template pihole mojo2600/pihole --version 1.9.0 --namespace=pihole > $@

diff: pihole.yaml clean/pihole.yaml
	kustomize build . > diff.yaml
	diff pihole.yaml diff.yaml
	rm -f diff.yaml
