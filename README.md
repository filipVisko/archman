# Archman

This repo provisions an Arch workstation.
It's useful to run from a fresh install of Arch or to maintain a system over time via code.
It lacks the security hardening required for supporting laptops at the moment.


```bash
# Run ansible in 'dry-run' mode and show all potential changes
make diff

# Apply the entire Ansible configuration
make apply

# Or selectively apply specific roles
ansible-playbook playbook.yml --tags containers
```

## Dotfiles

I prefer `chezmoi` as its written in Go and provides useful templating options for multi-machine and multi-os use.

```bash
chezmoi init git@github.com:USERNAME/chezmoi
chezmoi update
```

## Sandboxing

Sandboxing is available via `firejail`. Blocklisted folders can be added into the `firejail.blocklist` Ansible variable.

## Containers

Minikube and podman are used to provide a local k8s environment.
Set your container runtime and configure a rootless engine to get started.

```
minikube config set rootless true
minikube config set container-runtime containerd
```

## SSH

Ansible will set up a service-based ssh-agent configuration but leaves key management to you.
