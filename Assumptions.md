## Assumptions

### *For this excersie, I had some assumptions and this module is tested with these assumptions. If your environment has any other changes we need to modify puppet module ``webapp`` according to your infrastructure.* 

**1. Ubuntu 14.04**

**2. Firewall ports are open for installing packages. ( No local repository, all packages are installed from default repositries )**

**3. Puppet agent - 3.4.3 (default package )**

**4. Vagrant file -> Added 3 cpu for testing purpose. If you don't have enough number of CPU's please change ``-cpus", "3",`` according to your environment or remove this entry.**

**5. App service started using id ``appuser`` and uid for this user is ``555``**

**6. Puppet module name for this excersie is ``webapp``**

**7. To run Flask in production mode, We are using ``Nginx`` as reverse Proxy and ``uWSGI`` as Application server**

**8. We are running application using port ``5000`` (Ensure you are not using this port). If you want to change please change on puppet module.**

**9. Application running as ``myproject`` service. It can be stop and start using ``sudo start myproject`` & ``sudo stop myproject``.**

**10. uwsgi log max size is 10Mb and log roatation will happen every day.**

**11. Application ``threads`` ``process`` ``workers`` ``cpu-affinity`` all can be modified according to your requirement. If you want to modify please modify ``puppet's`` webapp module. (File name myproject.ini)**

**12. All tested on MAC book with VirtualBox and assigned 3 cpu and 512 memory.**
