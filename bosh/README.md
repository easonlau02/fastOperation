## Usage
### ./go_vm \<deployment key\> \<VM Type key\>
```
ubuntu@ops-manager:~/bosh$ ./go_vm depl1 vm1 
=====Going to vm1=======
=========================================
ENV : prod<auto capture based on current env>
Deployment : p-isolation-segment-dep1-seen23823123248
VM Type : isolated_diego_cell_vm1/ede11472-221e-4dc4-9e61-daawer232323
Dep Key : dep1
VM Type Key : vm1
=========================================
Using environment 'xx.xx.xx.xx' as user 'director' (bosh.*.read, openid, bosh.*.admin, bosh.read, bosh.admin)

Using deployment 'p-isolation-segment-dep1-seen23823123248'

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

Last login: Tue Jul 24 08:45:32 2018 from 172.16.170.4
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

isolated_diego_cell_vm1/isolated_diego_cell_vm1/ede11472-221e-4dc4-9e61-daawer232323:~$ 

```
