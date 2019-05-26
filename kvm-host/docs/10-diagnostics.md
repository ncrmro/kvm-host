```bash
virsh list --all --title
```

```bash
virsh list --all --title
```

virsh domiflist

## Cpus

```bash
virsh vcpuinfo alpine
```

```bash
virsh vcpupin alpine
```

```bash
virsh vcpucount alpine
```

```bash
virsh setvcpus alpine 2 --live
```

## Mem

```bash
virsh setmem alpine count --size 2GB
```

Max Mem

```bash
virsh setmaxmem guest1 1024 --current
```

```bash
virsh domblkstat GuestName block-device
```

[Red Hat Virsh](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/virtualization_deployment_and_administration_guide/sect-managing_guest_virtual_machines_with_virsh-displaying_per_guest_virtual_machine_information)

## Network

virsh domiflist alpine

Converting mac to ip

```bash
nmap -sP 10.0.0.0/24 >/dev/null && arp -an | grep "52:54:00:08:17:c8" | awk '{print $2}' | sed 's/[()]//g'
```

```bash
arp-scan 10.0.0.0/24
```
