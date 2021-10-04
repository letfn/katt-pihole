build: clean main.yaml ../main.yaml

../main.yaml : main.yaml
	kustomize build >$@

main.yaml: clean/main.yaml
	kustomize build clean >$@

clean/main.yaml:
	-helm repo add mojo2600 https://mojo2600.github.io/pihole-kubernetes
	helm repo update
	helm template pihole mojo2600/pihole --version 2.4.0 --namespace=pihole --values clean/values.yaml > $@

.PHONY: clean
clean:
	rm -f clean/main.yaml
