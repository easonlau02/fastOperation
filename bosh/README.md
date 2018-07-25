## Usage

* Get depployment key based on deps list, run `./deps_list`
```
lauea@ops-manager:~/bosh$ ./deps_list 
ENV : nonprod
1 : service-broker-d422534sdfsf232321
2 : apm-00c2asfd23223
3 : bosh-health-check
4 : cf-3b67asdf23223
5 : mongodb-community-dev
6 : mongodb-replset-community-dev
7 : p-healthwatch-asfsdfsadf2323
8 : p-dep1-11b89851fe75b1173dd2
```
* Confirm the deploment key and then check the vm type key, eg: dep_key=dep1, run `./vmlist_for_onedep dep1`
```
lauea@ops-manager:~/bosh$ ./vmlist_for_onedep metrics
ENV : prod
Dep Key : dep1
Deployment : p-dep1-11b89851fe75b1173dd2
Using environment 'xx.xx.xx.xx' as user 'director' (bosh.*.read, openid, bosh.*.admin, bosh.read, bosh.admin)

Task 93603. Done

Deployment 'p-dep1-11b89851fe75b1173dd2'

Instance                                                  Process State  AZ    IPs            VM CID                                                                          VM Type       Active  
vm1-testing-prod-gr/f3ae934f-b421-4c59-89f3-fdfsdfsf223d  running        null  xxx.xx.xxx.xx  agent_id:39c96055-4a3a-4129-b3cb-bdfssdfsdfsd;resource_group_name:testinggroup  Standard_F2s  -  
vm2test/6e495605-9088-4de9-be29-523223232323              running        null  xxx.xx.xxx.xx  agent_id:7e84948a-9413-4f5e-b4ac-4dfsdf2323ds;resource_group_name:testinggroup  Standard_F2s  -  

2 vms

Succeeded
```
* Now you have depoyment key and vm type key, eg: dep_key=dep1,vm_key=vm1, run `./go_vm dep1 vm1`
```
ubuntu@ops-manager:~/bosh$ ./go_vm depl1 vm1 
=====Going to vm1=======
=========================================
ENV : prod<auto capture based on current env>
Deployment : p-dep1-11b89851fe75b1173dd2
VM Type : vm1-testing-prod-gr/f3ae934f-b421-4c59-89f3-fdfsdfsf223d
Dep Key : dep1
VM Type Key : vm1
=========================================
Using environment 'xx.xx.xx.xx' as user 'director' (bosh.*.read, openid, bosh.*.admin, bosh.read, bosh.admin)

Using deployment 'p-dep1-11b89851fe75b1173dd2'

Task 92842. Done
Unauthorized use is strictly prohibited. All access and activity
is subject to logging and monitoring.
Welcome to Ubuntu 14.04.5 LTS (GNU/Linux 4.4.0-128-generic x86_64)

 * Documentation:  https://help.ubuntu.com/

The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

Last login: Tue Jul 24 08:45:32 2018 from xx.xx.xx.xx
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

vm1-testing-prod-gr/f3ae934f-b421-4c59-89f3-fdfsdfsf223d:~$ 

```
