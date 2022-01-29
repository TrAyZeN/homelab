# sshd
Configure sshd with security.

## Requirements
None.

## Role Variables
| Name               | Type   | Description                                                        |
|--------------------|--------|--------------------------------------------------------------------|
| `ssh_port`         | int    | Port number that sshd listens on. (default: `ansible_port | default(22)`)    |
| `ssh_allowed_user` | string | User name of the only user allowed to connect.  (default: `ansible_user_id`) |

## Dependencies
None.

## Example Playbook
```yaml
- hosts: server
  roles:
    - sshd
```

## License
TODO
