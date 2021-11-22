package boot

import (
	"github.com/defn/boot"
)

repo: boot.#Repo & {
	repo_name:     "katt-pihole"
	chart_repo:    "https://mojo2600.github.io/pihole-kubernetes"
	chart_name:    "pihole"
	chart_version: "2.4.2"
	install:       "pihole"
	namespace:     "pihole"
	variants:
		base:
			values: {
				serviceDhcp: enabled: false
				DNS1: "127.0.0.1#5353"
				DNS2: "127.0.0.1#5353"
				adlists: [
					"https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts",
					"https://raw.githubusercontent.com/mhhakim/pihole-blocklist/master/porn.txt",
				]
			}
}
