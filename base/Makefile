build: clean pihole.yaml

pihole.yaml: clean/pihole.yaml
	kustomize build clean > $@

clean/pihole.yaml:
	-helm repo add mojo2600 https://mojo2600.github.io/pihole-kubernetes
	helm repo update
	helm template pihole mojo2600/pihole --version 2.4.0 --namespace=pihole --values clean/values.yaml > $@

.PHONY: clean
clean:
	rm -f clean/pihole.yaml
