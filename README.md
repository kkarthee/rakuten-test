##Test Case

**Download this Git repositroy and bring up VM :** 

```
git clone --recursive git@github.com:kkarthee/rakuten-test.git
cd rakuten-test
vagrant up
vagrant ssh 
curl rakuten
curl 10.10.10.20
```

**From remote server or Server where virtual server installed (Should have network access to VM)**  : *curl http://10.10.10.20*

##Execution Report 

*Karthikeyan:finalrelease karthikeyan.kanagaraj$ git clone --recursive git@github.com:kkarthee/rakuten-test.git*

```
Cloning into 'rakuten-test'...
remote: Enumerating objects: 109, done.
remote: Counting objects: 100% (109/109), done.
remote: Co666777mpressing objects: 100% (63/63), done.
remote: Total 1847 (delta 54), reused 83 (delta 33), pack-reused 1738
Receiving objects: 100% (1847/1847), 5.92 MiB | 2.19 MiB/s, done.
Resolving deltas: 100% (669/669), done.
Submodule 'devops-challenge' (https://bitbucket.org/azneita/devops-challenge.git) registered for path 'devops-challenge'
Cloning into '/Users/karthikeyan.kanagaraj/tickets/rakuten/finaltest/finalrelease/rakuten-test/devops-challenge'...
remote: Counting objects: 6, done.
remote: Compressing objects: 100% (5/5), done.
remote: Total 6 (delta 0), reused 0 (delta 0)
Submodule path 'devops-challenge': checked out 'e62b3527b4a7b0256ec0e05666e2c8d3be5495d1'
```

*Karthikeyan:finalrelease karthikeyan.kanagaraj$ pwd*
>/Users/karthikeyan.kanagaraj/tickets/rakuten/finaltest/finalrelease

*Karthikeyan:finalrelease karthikeyan.kanagaraj$ ls -lrt*
>total 0
drwxr-xr-x  10 karthikeyan.kanagaraj  staff  320 Jan  3 18:17 rakuten-test

*Karthikeyan:finalrelease karthikeyan.kanagaraj$ cd rakuten-test/*



*Karthikeyan:rakuten-test karthikeyan.kanagaraj$ cd devops-challenge/*

*Karthikeyan:devops-challenge karthikeyan.kanagaraj$ ls -lrt*
>total 32
-rw-r--r--  1 karthikeyan.kanagaraj  staff   909 Jan  3 18:18 README.md
-rwxr-xr-x  1 karthikeyan.kanagaraj  staff   400 Jan  3 18:18 app.py
-rw-r--r--  1 karthikeyan.kanagaraj  staff  1714 Jan  3 18:18 devops-challenge.md
-rw-r--r--  1 karthikeyan.kanagaraj  staff    15 Jan  3 18:18 requirements.txt

*Karthikeyan:devops-challenge karthikeyan.kanagaraj$ pwd*
>/Users/karthikeyan.kanagaraj/tickets/rakuten/finaltest/finalrelease/rakuten-test/devops-challenge

*Karthikeyan:devops-challenge karthikeyan.kanagaraj$ vagrant up*

```
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Box 'ubuntu/trusty64' could not be found. Attempting to find and install...
    default: Box Provider: virtualbox
    default: Box Version: >= 0
==> default: Loading metadata for box 'https://atlas.hashicorp.com/ubuntu/trusty64'
    default: URL: https://atlas.hashicorp.com/ubuntu/trusty64
==> default: Adding box 'ubuntu/trusty64' (v20181207.0.2) for provider: virtualbox
    default: Downloading: https://vagrantcloud.com/ubuntu/boxes/trusty64/versions/20181207.0.2/providers/virtualbox.box
    default: Download redirected to host: cloud-images.ubuntu.com
==> default: Successfully added box 'ubuntu/trusty64' (v20181207.0.2) for 'virtualbox'!
==> default: Importing base box 'ubuntu/trusty64'...
==> default: Matching MAC address for NAT networking...
==> default: Checking if box 'ubuntu/trusty64' is up to date...
==> default: Setting the name of the VM: rakuten-test_default_1546585683496_48802
==> default: Clearing any previously set forwarded ports...
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
    default: Adapter 1: nat
    default: Adapter 2: hostonly
==> default: Forwarding ports...
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
    default: SSH address: 127.0.0.1:2222
    default: SSH username: vagrant
    default: SSH auth method: private key
    default: Warning: Connection reset. Retrying...
    default:
    default: Vagrant insecure key detected. Vagrant will automatically replace
    default: this with a newly generated keypair for better security.
    default:
    default: Inserting generated public key within guest...
    default: Removing insecure key from the guest if it's present...
    default: Key inserted! Disconnecting and reconnecting using new SSH key...
==> default: Machine booted and ready!
==> default: Checking for guest additions in VM...
    default: The guest additions on this VM do not match the installed version of
    default: VirtualBox! In most cases this is fine, but in rare cases it can
    default: prevent things such as shared folders from working properly. If you see
    default: shared folder errors, please make sure the guest additions within the
    default: virtual machine match the version of VirtualBox you have installed on
    default: your host and reload your VM.
    default:
    default: Guest Additions Version: 4.3.36
    default: VirtualBox Version: 5.2
==> default: Setting hostname...
==> default: Configuring and enabling network interfaces...
==> default: Ensuring requiretty is disabled...
==> default: Mounting shared folders...
    default: /vagrant => /Users/karthikeyan.kanagaraj/tickets/rakuten/resull/rakuten-test
    default: /webapps/devops => /Users/karthikeyan.kanagaraj/tickets/rakuten/resull/rakuten-test/devops-challenge
==> default: Detected mount owner ID within mount options. (uid: 555 guestpath: /webapps/devops)
    default: /tmp/vagrant-puppet/modules-041b38325f0b98aa4cbe41ae252ea6a3 => /Users/karthikeyan.kanagaraj/tickets/rakuten/resull/rakuten-test/puppet/modules
    default: /tmp/vagrant-puppet/manifests-846018e2aa141a5eb79a64b4015fc5f3 => /Users/karthikeyan.kanagaraj/tickets/rakuten/resull/rakuten-test/puppet/manifests
==> default: Running provisioner: puppet...
==> default: Running Puppet with site.pp...
==> default: Warning: Config file /etc/puppet/hiera.yaml not found, using Hiera defaults
==> default: Notice: Compiled catalog for rakuten.training in environment production in 0.84 seconds
==> default: Notice: /Stage[main]/Webapp::Pyservice/File[/etc/sudoers.d/55-myproject-users]/ensure: defined content as '{md5}d016ab67324c93dada1d2062b1919d84'
==> default: Notice: /Stage[main]/Webapp::Pyservice/File[/etc/init/myproject.conf]/ensure: defined content as '{md5}e1c4212c8488b37109f5f6df40d55243'
==> default: Notice: /Stage[main]/Webapp::Pyservice/User[appuser]/ensure: created
==> default: Notice: /Stage[main]/Webapp::Pyservice/File[/webapps/devops/run_app.sh]/ensure: defined content as '{md5}60ef4e996a07c72e83fc1dfce6bcad51'
==> default: Notice: /Stage[main]/Webapp::Pyservice/File[/webapps/devops/log]/ensure: created
==> default: Notice: /Stage[main]/Webapp::Pyservice/File[/webapps/devops/myproject.ini]/ensure: defined content as '{md5}e0ca5d50514b45595216e85b06daf58e'
==> default: Notice: /Stage[main]/Webapp::Pyservice/File[/webapps/devops/wsgi.py]/ensure: defined content as '{md5}b4cfd2f2017c7f88e4049fa0ed026e86'
==> default: Notice: /Stage[main]/Webapp::Pyservice/File[/webapps/devops/app.sh]/ensure: defined content as '{md5}ac2b5a5d1dda909ec5571ffb5a9f574a'
==> default: Notice: /Stage[main]/Webapp::Package/Exec[apt_get_update]/returns: executed successfully
==> default: Notice: /Stage[main]/Webapp::Package/Package[build-essential]/ensure: ensure changed 'purged' to 'present'
==> default: Notice: /Stage[main]/Webapp::Package/Package[python-flask]/ensure: ensure changed 'purged' to 'present'
==> default: Notice: /Stage[main]/Webapp::Package/Package[python-pip]/ensure: ensure changed 'purged' to 'present'
==> default: Notice: /Stage[main]/Webapp::Package/Package[python-dev]/ensure: ensure changed 'purged' to 'present'
==> default: Notice: /Stage[main]/Webapp::Package/Package[uwsgi]/ensure: created
==> default: Notice: /Stage[main]/Webapp::Package/Package[virtualenv]/ensure: created
==> default: Notice: /Stage[main]/Webapp::Nginxapp/Package[nginx]/ensure: ensure changed 'purged' to 'present'
==> default: Notice: /Stage[main]/Webapp::Nginxapp/File[/etc/nginx/sites-available/myproject]/ensure: created
==> default:
==> default: Notice: /Stage[main]/Webapp::Nginxapp/File[/etc/nginx/sites-enabled/default]/ensure: removed
==> default: Notice: /Stage[main]/Webapp::Nginxapp/File[/etc/nginx/sites-enabled/myproject]/ensure: defined content as '{md5}063c38bc196f3b72e54f617b4342c85d'
==> default: Notice: /Stage[main]/Webapp::Myproject/Exec[/webapps/devops/run_app.sh]/returns: executed successfully
==> default: Notice: /Stage[main]/Webapp::App_logrotate/File[nginx_logrotate]/content: content changed '{md5}0e89633bf31f8831755b3c13009e7921' to '{md5}fbbcfde19c60e4a237ae615bc72fa1c7'
==> default: Notice: /Stage[main]/Webapp::App_logrotate/File[/var/log/nginx]/owner: owner changed 'root' to 'appuser'
==> default: Notice: /Stage[main]/Webapp::App_logrotate/File[/var/log/nginx]/group: group changed 'adm' to 'www-data'
==> default: Notice: /Stage[main]/Webapp::App_logrotate/File[uwsgi_logrotate]/ensure: defined content as '{md5}37e0c37bea9fbaa5ff5145da30835c5d'
==> default: Notice: Finished catalog run in 113.56 seconds
Karthikeyan:rakuten-test karthikeyan.kanagaraj$ vagrant ssh
Welcome to Ubuntu 14.04.5 LTS (GNU/Linux 3.13.0-163-generic x86_64)

 * Documentation:  https://help.ubuntu.com/

  System information as of Fri Jan  4 07:08:42 UTC 2019

  System load:  0.45              Processes:           104
  Usage of /:   3.6% of 39.34GB   Users logged in:     0
  Memory usage: 30%               IP address for eth0: 10.0.2.15
  Swap usage:   0%

  Graph this data and manage this system at:
    https://landscape.canonical.com/

  Get cloud support with Ubuntu Advantage Cloud Guest:
    http://www.ubuntu.com/business/services/cloud

0 packages can be updated.
0 updates are security updates.

New release '16.04.5
TS' available.
Run 'do-release-upgrade' to upgrade to it.


Last login: Fri Jan  4 07:08:44 2019 from 10.0.2.2
_____________________________________________________________________
WARNING! Your environment specifies an invalid locale.
 This can affect your user experience significantly, including the
 ability to manage packages. You may install the locales by running:

   sudo apt-get install language-pack-UTF-8
     or
   sudo locale-gen UTF-8

To see all available language packs, run:
   apt-cache search "^language-pack-[a-z][a-z]$"
To disable this message for all users, run:
   sudo touch /var/lib/cloud/instance/locale-check.skip
_____________________________________________________________________

vagrant@rakuten:~$ 

```

*vagrant@rakuten:~$*
*vagrant@rakuten:~$ curl rakuten*

```
{
  "headers": {
    "Accept": "*/*",
    "Connection": "upgrade",
    "Host": "10.10.10.20:5000",
    "User-Agent": "curl/7.35.0",
    "X-Forwarded-For": "127.0.0.1",
    "X-Forwarded-Proto": "http",
    "X-Nginx-Proxy": "true",
    "X-Real-Ip": "127.0.0.1"
  },
  "origin": "127.0.0.1"
  }
  
  ```
 *vagrant@rakuten:~$ curl 10.10.10.20*

```
{
  "headers": {
    "Accept": "*/*",
    "Connection": "upgrade",
    "Host": "10.10.10.20:5000",
    "User-Agent": "curl/7.35.0",
    "X-Forwarded-For": "10.10.10.20",
    "X-Forwarded-Proto": "http",
    "X-Nginx-Proxy": "true",
    "X-Real-Ip": "10.10.10.20"
  },
  "origin": "10.10.10.20"
}
```
*vagrant@rakuten:~$*
