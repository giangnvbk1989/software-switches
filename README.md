# Software switches
This repository contains scripts to reproduce all the experiments on TPT server. All the results and numbers shown in the slides and papers are reproducible on the same server.

We consider several state-of-the-art software switches in our project, including:
* OVS-DPDK
* SnabbSwitch
* FastClick
* ClickNF
* BESS (SoftNIC)
* netmap
* VPP

The detailed instructions for each considered software switch can be found in the corresponding sub-directories.

## Virtualization environment
This project considers both virtual machines and containers, both of which are essential building blocks in Network Function Virtualization (NFV).

### Virtual Machines
We use QEMU/KVM as hypervisor. 

#### Version of QEMU
In specific, three versions of QEMU software are used in our experiments:

* QEMU 3.0.95: Used for experiments with OVS-DPDK, Snabb, FastClick and ClickNF
* QEMU 2.5.0: Used for experiments with BESS due to a compatibility issue reported by https://github.com/NetSys/bess/issues/874
* QEMU 3.0.95: A modified version for experiments with netmap, since it supports netmap passthrough. More details can be found in https://github.com/vmaffione/qemu

#### Image
We choose Centos 7 image. They are available [here](https://cloud.centos.org/centos/7/images/). We expect similar performance using other Linux distributions. In our experiments, we have downloaded CentOS-7-x86_64-Azure-vm2.qcow2 image and edit it to allow password access. The username and password to login to its VMs are both "root".

#### Examples of configuring VMs
QEMU provides a variety of options to configure virtual machines. 


### Containers
We use Docker to create and manage containers. The version is 17.03.2-ce, build f5ec1e2. 
