<h1 align="center">
    Homelab
</h1>

This repository contains provisioning scripts and service configurations for my
homelab.

## Services
- flame
- kiwix
- filebrowser
- archivebox
- wallabag
- gitea
- grafana
- vaultwarden
- immich

## Usage
### Provisionning
Requirements:
- A user
- An ssh server
- `python3-apt`

```sh
ansible-playbook -e "ansible_port=<ssh_port>" -i inventories/prod.yml -K provision.yml
```

### Deployment
```sh
ansible-playbook -e "ansible_port=<ssh_port>" -i inventories/prod.yml -K deploy.yml
```

## Development
### Vagrant
#### Start environment
```sh
vagrant up
vagrant ssh
```

#### Provisioning
```sh
ansible-playbook --private-key=./.vagrant/machines/host1/virtualbox/private_key -u vagrant -i inventories/test.yml provision.yml
```

## Future
For now ansible is used to provision the server and docker-compose to describe
and run services. An idea would be to migrate to k3s but I am less comfortable
with that tool. Proxmox is another idea to try for added security but at the
expense of the performance.
