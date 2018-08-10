## Usage
### Auto install latest docker-ce under ceontos, via `./install_docker_ce_centos` (Need to run under root account or account has sudo permission)
```
[root@kube ~]# ./install_docker_ce_centos
>>Start checking
 Please install yum-config-manager via sudo yum install -y yum-utils 
 Now to install yum-utils ? 
[yes|no]:yes
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: mirrors.163.com
 * extras: mirrors.cn99.com
 * updates: mirrors.cn99.com
Resolving Dependencies
--> Running transaction check
---> Package yum-utils.noarch 0:1.1.31-46.el7_5 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

==============================================================================================================================================================================================================================================
 Package                                                  Arch                                                  Version                                                          Repository                                              Size
==============================================================================================================================================================================================================================================
Installing:
 yum-utils                                                noarch                                                1.1.31-46.el7_5                                                  updates                                                120 k

Transaction Summary
==============================================================================================================================================================================================================================================
Install  1 Package

Total download size: 120 k
Installed size: 335 k
Downloading packages:
yum-utils-1.1.31-46.el7_5.noarch.rpm                                                                                                                                                                                   | 120 kB  00:00:00     
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
Warning: RPMDB altered outside of yum.
  Installing : yum-utils-1.1.31-46.el7_5.noarch                                                                                                                                                                                           1/1 
  Verifying  : yum-utils-1.1.31-46.el7_5.noarch                                                                                                                                                                                           1/1 

Installed:
  yum-utils.noarch 0:1.1.31-46.el7_5                                                                                                                                                                                                          

Complete!
>>Pass checking
>>Download docker-ce repo
 Download repo to your /etc/yum.repos.d/?
[yes|no]:yes
 Successful to add docker-ce repo into /etc/yum.repos.d/ 
>>Done to download docker-ce repo
>>Start installation
 If ready to install latest docker-ce?
[yes|no]:yes
Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: mirrors.163.com
 * extras: mirrors.cn99.com
 * updates: mirrors.cn99.com
Package docker-ce-18.06.0.ce-3.el7.x86_64 already installed and latest version
Nothing to do
>>End installation
>>Start verify
 Docker version 18.06.0-ce, build 0ffa825 
>>Passed verification

```
