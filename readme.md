## Installation Guide

### Prerequisites
- Install [VirtualBox](https://www.virtualbox.org) on you host machine.
- Install [Vagrant](https://www.vagrantup.com) on your host machine.  
- Install [GitBash](https://gitforwindows.org) on your host machine.  

### Installation
- Open your system's hosts file in a text editor with *admin* privileges.
 `C:\Windows\System32\drivers\etc\hosts` on Windows
-  Add these two new entries:
```
  #CSG-BAZO Project
  192.168.10.30 bazo.local
  192.168.10.30 api.bazo.local
```
- Create an empty folder somewhere (e.g. `BAZO`) for your BAZO projects.
- Open a [terminal](https://gitforwindows.org) and ``cd BAZO``
- Clone these repos into the `/BAZO` folder
```
git clone https://github.com/julwil/bazo-vagrant
git clone https://github.com/julwil/bazo-miner
git clone https://github.com/julwil/bazo-client
git clone https://github.com/julwil/bazo-block-explorer
```
- These folders are shared between your host and the VM.
- Open a terminal and cd into the bazo-vagrant folder `cd bazo-vagrant` 
- Start the VM with `vagrant up`
- After the provisioning of the VM is done, ssh into it with `vagrant ssh`
- You will find the cloned bazo projects in:
```
/home/vagrant/go/src
                  |__ bazo-miner
                  |__ bazo-client
                  |__ bazo-block-explorer
```
- Use the terminal to start bazo-miner, bazo-client (rest) and bazo-block-explorer in the VM. Hint: You can open as many terminal sessions with the VM as you like. Just open an new terminal and run `vagrant ssh` in the `bazo-vagrant` folder to connect to it.
- Open a web browser and navigate to http://bazo.local.
- On your host machine, use an editor of your choice to work on the bazo-projects. The folders are shared with the VM.

## Additional resources
This vagrant box is based on the [laravel/homestaed](https://laravel.com/docs/7.x/homestead) box. 

