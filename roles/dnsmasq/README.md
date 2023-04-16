# dnsmasq
Install and configure dnsmasq.

## Requirements
A debian based distribution.

## Role Variables
| Name               | Type   | Description                                                   |
|--------------------|--------|---------------------------------------------------------------|
| `server_ip` | string | IP address of the server hosting the services.  (default: `host_ip`) |

## Dependencies
None.

## Example Playbook
```yaml
- hosts: server
  roles:
    - dnsmasq
```

## License
TODO
