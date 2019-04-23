# Role Name

A project to set up a KVM baremetal hypervisor,
create a secure base guest for easy cloning and clone that image into other predefined vms.

## Requirements

Only supports Ubuntu 18.10 atm.

## Role Variables

```yaml
kvm_guests:
  - name: k8-master
    base_guest: "{{kvm_base_guests_ubuntu18_04_server}}"
    hostname: k8-master
    domain: k8-master.local
    network_interface: br0
```

## Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```yaml
- name: Setup KVM hosts.
  hosts: kvm-hosts
  become: true
  vars_files:
    - vars.yml
  vars:
    - users:
        - name: ncrmro
          uid: 1000
          email_perfered: ncrmro@gmail.com
          update_password: on_create
          groups:
            - sudo
            - libvirt
            - libvirt-qemu
          generate_ssh_key: true
  roles:
    - role: ncrmro.kvm_host
```

## License

BSD

## Author Information

An optional section for the role authors to include contact information, or a website (HTML is not allowed).

## Deployment

```bash
ansible-galaxy import  ncrmro kvm-host
```

```bash
virt-clone --original ubuntu18_04_server --name test --file /vms/test.qcow2
```
