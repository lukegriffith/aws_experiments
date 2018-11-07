lg@ubuntu-vm:~/code$ sudo apt install git
[sudo] password for lg: 
lg@ubuntu-vm:~/code$ sudo apt install git
[sudo] password for lg: 
Sorry, try again.
[sudo] password for lg: 
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following packages were automatically installed and are no longer required:
  app-install-data apt-clone archdetect-deb btrfs-tools cryptsetup-bin dmeventd dmraid dpkg-repack gir1.2-timezonemap-1.0 gir1.2-xkl-1.0 grub-pc-bin kpartx kpartx-boot libdebian-installer4
  libdevmapper-event1.02.1 libdmraid1.0.0.rc16 libido3-0.1-0 liblvm2app2.2 liblvm2cmd2.02 libreadline5 libtimezonemap-data libtimezonemap1 lvm2 python3-icu python3-pam rdate u-boot-tools
Use 'sudo apt autoremove' to remove them.
The following additional packages will be installed:
  git-man liberror-perl
Suggested packages:
  git-daemon-run | git-daemon-sysvinit git-doc git-el git-email git-gui gitk gitweb git-cvs git-mediawiki git-svn
The following NEW packages will be installed
  git git-man liberror-perl
0 to upgrade, 3 to newly install, 0 to remove and 158 not to upgrade.
Need to get 4,731 kB of archives.
After this operation, 33.9 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu bionic/main amd64 liberror-perl all 0.17025-1 [22.8 kB]
Get:2 http://archive.ubuntu.com/ubuntu bionic-updates/main amd64 git-man all 1:2.17.1-1ubuntu0.1 [803 kB]
Get:3 http://archive.ubuntu.com/ubuntu bionic-updates/main amd64 git amd64 1:2.17.1-1ubuntu0.1 [3,905 kB]
Fetched 4,731 kB in 1s (7,147 kB/s)
Selecting previously unselected package liberror-perl.
(Reading database ... 130999 files and directories currently installed.)
Preparing to unpack .../liberror-perl_0.17025-1_all.deb ...
Unpacking liberror-perl (0.17025-1) ...
Selecting previously unselected package git-man.
Preparing to unpack .../git-man_1%3a2.17.1-1ubuntu0.1_all.deb ...
Unpacking git-man (1:2.17.1-1ubuntu0.1) ...
Selecting previously unselected package git.
Preparing to unpack .../git_1%3a2.17.1-1ubuntu0.1_amd64.deb ...
Unpacking git (1:2.17.1-1ubuntu0.1) ...
Setting up git-man (1:2.17.1-1ubuntu0.1) ...
Setting up liberror-perl (0.17025-1) ...
Processing triggers for man-db (2.8.3-2) ...
Setting up git (1:2.17.1-1ubuntu0.1) ...
lg@ubuntu-vm:~/code$ 
lg@ubuntu-vm:~/code$ ls
lg@ubuntu-vm:~/code$ 
lg@ubuntu-vm:~/code$ clear

lg@ubuntu-vm:~/code$ ls
lg@ubuntu-vm:~/code$ 
lg@ubuntu-vm:~/code$ ls
lg@ubuntu-vm:~/code$ pwd
/home/lg/code
lg@ubuntu-vm:~/code$ git clone https://github.com/lukemgriffith/aws_experiments
Cloning into 'aws_experiments'...
remote: Enumerating objects: 7, done.
remote: Counting objects: 100% (7/7), done.
remote: Compressing objects: 100% (7/7), done.
remote: Total 286 (delta 0), reused 3 (delta 0), pack-reused 279
Receiving objects: 100% (286/286), 45.22 MiB | 8.01 MiB/s, done.
Resolving deltas: 100% (77/77), done.
lg@ubuntu-vm:~/code$ ls
aws_experiments
lg@ubuntu-vm:~/code$ cd aws_experiments/
lg@ubuntu-vm:~/code/aws_experiments$ 
lg@ubuntu-vm:~/code/aws_experiments$ 
lg@ubuntu-vm:~/code/aws_experiments$ 
lg@ubuntu-vm:~/code/aws_experiments$ cd 
lg@ubuntu-vm:~$ wget https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip
--2018-09-25 20:29:52--  https://releases.hashicorp.com/terraform/0.11.8/terraform_0.11.8_linux_amd64.zip
Resolving releases.hashicorp.com (releases.hashicorp.com)... 151.101.17.183, 2a04:4e42:f::439
Connecting to releases.hashicorp.com (releases.hashicorp.com)|151.101.17.183|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 17871447 (17M) [application/zip]
Saving to: ‘terraform_0.11.8_linux_amd64.zip’

terraform_0.11.8_linux_amd64.zip                   100%[================================================================================================================>]  17.04M  8.49MB/s    in 2.0s    

2018-09-25 20:29:54 (8.49 MB/s) - ‘terraform_0.11.8_linux_amd64.zip’ saved [17871447/17871447]

lg@ubuntu-vm:~$ unzip
UnZip 6.00 of 20 April 2009, by Debian. Original by Info-ZIP.

Usage: unzip [-Z] [-opts[modifiers]] file[.zip] [list] [-x xlist] [-d exdir]
  Default action is to extract files in list, except those in xlist, to exdir;
  file[.zip] may be a wildcard.  -Z => ZipInfo mode ("unzip -Z" for usage).

  -p  extract files to pipe, no messages     -l  list files (short format)
  -f  freshen existing files, create none    -t  test compressed archive data
  -u  update files, create if necessary      -z  display archive comment only
  -v  list verbosely/show version info       -T  timestamp archive to latest
  -x  exclude files that follow (in xlist)   -d  extract files into exdir
modifiers:
  -n  never overwrite existing files         -q  quiet mode (-qq => quieter)
  -o  overwrite files WITHOUT prompting      -a  auto-convert any text files
  -j  junk paths (do not make directories)   -aa treat ALL files as text
  -U  use escapes for all non-ASCII Unicode  -UU ignore any Unicode fields
  -C  match filenames case-insensitively     -L  make (some) names lowercase
  -X  restore UID/GID info                   -V  retain VMS version numbers
  -K  keep setuid/setgid/tacky permissions   -M  pipe through "more" pager
  -O CHARSET  specify a character encoding for DOS, Windows and OS/2 archives
  -I CHARSET  specify a character encoding for UNIX and other archives

See "unzip -hh" or unzip.txt for more help.  Examples:
  unzip data1 -x joe   => extract all files except joe from zipfile data1.zip
  unzip -p foo | more  => send contents of foo.zip via pipe into program more
  unzip -fo foo ReadMe => quietly replace existing ReadMe if archive file newer
lg@ubuntu-vm:~$ unzip terraform_0.11.8_linux_amd64.zip 
Archive:  terraform_0.11.8_linux_amd64.zip
  inflating: terraform               
lg@ubuntu-vm:~$ sudo mv terraform /usr/local/bin/
lg@ubuntu-vm:~$ 
lg@ubuntu-vm:~$ 
lg@ubuntu-vm:~$ terraform
Usage: terraform [-version] [-help] <command> [args]

The available commands for execution are listed below.
The most common, useful commands are shown first, followed by
less common or more advanced commands. If you're just getting
started with Terraform, stick with the common commands. For the
other commands, please read the help and docs before usage.

Common commands:
    apply              Builds or changes infrastructure
    console            Interactive console for Terraform interpolations
    destroy            Destroy Terraform-managed infrastructure
    env                Workspace management
    fmt                Rewrites config files to canonical format
    get                Download and install modules for the configuration
    graph              Create a visual graph of Terraform resources
    import             Import existing infrastructure into Terraform
    init               Initialize a Terraform working directory
    output             Read an output from a state file
    plan               Generate and show an execution plan
    providers          Prints a tree of the providers used in the configuration
    push               Upload this Terraform module to Atlas to run
    refresh            Update local state file against real resources
    show               Inspect Terraform state or plan
    taint              Manually mark a resource for recreation
    untaint            Manually unmark a resource as tainted
    validate           Validates the Terraform files
    version            Prints the Terraform version
    workspace          Workspace management

All other commands:
    debug              Debug output management (experimental)
    force-unlock       Manually unlock the terraform state
    state              Advanced state management
lg@ubuntu-vm:~$ ls
code  Desktop  Documents  Downloads  examples.desktop  Music  Pictures  Public  shared-drives  Templates  terraform_0.11.8_linux_amd64.zip  Videos
lg@ubuntu-vm:~$ 
lg@ubuntu-vm:~$ 
lg@ubuntu-vm:~$ cd code/aws_experiments/aws
lg@ubuntu-vm:~/code/aws_experiments/aws$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/home/lg/.ssh/id_rsa): 
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 

Your identification has been saved in /home/lg/.ssh/id_rsa.
Your public key has been saved in /home/lg/.ssh/id_rsa.pub.
The key fingerprint is:
SHA256:AbGdAd5A76ZLrNFa96WL6uAAWDEJWes5wpOTEoE8PIs lg@ubuntu-vm
The key's randomart image is:
+---[RSA 2048]----+
|*++. .*o.        |
|o*.+ . B o       |
|o *   o *        |
|E=o.   . .       |
|=*+     S        |
|.oo. o o         |
|  . o * .   .    |
|   o B o o o     |
|    +.+.. +.     |
+----[SHA256]-----+
lg@ubuntu-vm:~/code/aws_experiments/aws$ 
lg@ubuntu-vm:~/code/aws_experiments/aws$ 
lg@ubuntu-vm:~/code/aws_experiments/aws$ source setEnv.sh 
lg@ubuntu-vm:~/code/aws_experiments/aws$ 
lg@ubuntu-vm:~/code/aws_experiments/aws$ 
lg@ubuntu-vm:~/code/aws_experiments/aws$ terraform init
Initializing modules...
- module.consul_servers
  Getting source "./server"
- module.hosts
  Getting source "./server"

Initializing provider plugins...
- Checking for available provider plugins on https://releases.hashicorp.com...
- Downloading plugin for provider "aws" (1.37.0)...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.aws: version = "~> 1.37"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
lg@ubuntu-vm:~/code/aws_experiments/aws$ 
