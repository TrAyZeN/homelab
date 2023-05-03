# pki
Create a simple PKI with a root CA and a signing CA delivering TLS
certificates.

Greate documentation about PKI setup: https://pki-tutorial.readthedocs.io/en/latest/index.html

## Requirements
A debian based distribution.

## Role Variables
None.

## Dependencies
None.

## Example Playbook
```yaml
- hosts: server
  roles:
    - pki
```

## License
TODO
