# docker
Install and configure [Docker Compose V2](https://github.com/docker/compose).

## Requirements
A debian based distribution.

## Role Variables
| Name               | Type   | Description                                                        |
|--------------------|--------|--------------------------------------------------------------------|
| `docker_plugins_dir` | string    | Docker plugins directory. |
| `docker_compose_version` | string | Version of docker-compose to install. (default: "v2.2.3") |
| `docker_compose_binary_url` | string | URL where to download docker-compose binary from. |

## Dependencies
None.

## Example Playbook
```yaml
- hosts: server
  roles:
    - docker-compose
```

## License
TODO
