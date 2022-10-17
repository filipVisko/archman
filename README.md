# Archman

This repo provisions an Arch workstation.
It's useful to run from a fresh install of Arch or to maintain a system over time via code.
It lacks the security hardening required for supporting laptops at the moment.


```bash
ansible-playbook playbook.yml --inventory inventory
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

Minikube and podman are used to provide a rootless local developer k8s environment.

## SSH

Ansible will set up a service-based ssh-agent configuration but leaves key management to you.
