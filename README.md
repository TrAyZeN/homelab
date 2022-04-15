# My Homelab

IaC

## TODO
- Add playbook to launch services
- security updates
- watchtower ?
- docker security
- setup fail2ban
- secret management
- file permissions
- Add IaC tests
- wallabag secrets

## Provisionning requirements
- a user
- ssh

```
ansible-playbook -e "ansible_port=1337" -i ./prod.yml ./provision.yml -K
```

## Services
- Heimdall
- kiwix
- nextcloud
- filebrowser
- archivebox
- grafana
- wallabag
