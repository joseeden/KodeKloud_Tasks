
-----------------------------------------------------------------------------------------------------------------

# SUPPORTING FILE

# This is a supporting file for the Task of the same name.
# This may contain configurations/config file.
# Basically, any file that is edited/created/modified through the 'vi' or 'nano' command will appear here.
# Note that there may be more than one supporting files for the Task at hand.

-----------------------------------------------------------------------------------------------------------------

TASK 30 - SupportFile - Scrapes for App Server 2

thor@jump_host /$
thor@jump_host /$ sshpass -p  '******' ssh -o StrictHostKeyChecking=no steve@172.16.238.11
Warning: Permanently added '172.16.238.11' (ECDSA) to the list of known hosts.
sudo su -
******[steve@stapp02 ~]$ sudo su -

We trust you have received the usual lecture from the local System
Administrator. It usually boils down to these three things:

    #1) Respect the privacy of others.
    #2) Think before you type.
    #3) With great power comes great responsibility.

[sudo] password for steve:
[root@stapp02 ~]#
[root@stapp02 ~]# sudo yum install git -y
Loaded plugins: fastestmirror, ovl
Determining fastest mirrors
 * base: mirror.softaculous.com
 * extras: mirror.ratiokontakt.de
 * updates: linux.darkpenguin.net
base                                                                     | 3.6 kB  00:00:00
extras                                                                   | 2.9 kB  00:00:00
updates                                                                  | 2.9 kB  00:00:00
(1/4): base/7/x86_64/group_gz                                            | 153 kB  00:00:00
(2/4): extras/7/x86_64/primary_db                                        | 205 kB  00:00:00
(3/4): updates/7/x86_64/primary_db                                       | 3.7 MB  00:00:00
(4/4): base/7/x86_64/primary_db                                          | 6.1 MB  00:00:00
Resolving Dependencies
--> Running transaction check
---> Package git.x86_64 0:1.8.3.1-23.el7_8 will be installed
--> Processing Dependency: perl-Git = 1.8.3.1-23.el7_8 for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl >= 5.008 for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: rsync for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(warnings) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(vars) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(strict) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(lib) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(Term::ReadKey) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(Git) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(Getopt::Long) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(File::stat) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(File::Temp) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(File::Spec) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(File::Path) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(File::Find) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(File::Copy) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(File::Basename) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(Exporter) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: perl(Error) for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: less for package: git-1.8.3.1-23.el7_8.x86_64
--> Processing Dependency: /usr/bin/perl for package: git-1.8.3.1-23.el7_8.x86_64
--> Running transaction check
---> Package less.x86_64 0:458-9.el7 will be installed
--> Processing Dependency: groff-base for package: less-458-9.el7.x86_64
---> Package perl.x86_64 4:5.16.3-295.el7 will be installed
--> Processing Dependency: perl-libs = 4:5.16.3-295.el7 for package: 4:perl-5.16.3-295.el7.x86_64
--> Processing Dependency: perl(Socket) >= 1.3 for package: 4:perl-5.16.3-295.el7.x86_64
--> Processing Dependency: perl(Scalar::Util) >= 1.10 for package: 4:perl-5.16.3-295.el7.x86_64
--> Processing Dependency: perl-macros for package: 4:perl-5.16.3-295.el7.x86_64
--> Processing Dependency: perl-libs for package: 4:perl-5.16.3-295.el7.x86_64
--> Processing Dependency: perl(threads::shared) for package: 4:perl-5.16.3-295.el7.x86_64
--> Processing Dependency: perl(threads) for package: 4:perl-5.16.3-295.el7.x86_64
--> Processing Dependency: perl(constant) for package: 4:perl-5.16.3-295.el7.x86_64
--> Processing Dependency: perl(Time::Local) for package: 4:perl-5.16.3-295.el7.x86_64
--> Processing Dependency: perl(Time::HiRes) for package: 4:perl-5.16.3-295.el7.x86_64
--> Processing Dependency: perl(Storable) for package: 4:perl-5.16.3-295.el7.x86_64
--> Processing Dependency: perl(Socket) for package: 4:perl-5.16.3-295.el7.x86_64
--> Processing Dependency: perl(Scalar::Util) for package: 4:perl-5.16.3-295.el7.x86_64
--> Processing Dependency: perl(Pod::Simple::XHTML) for package: 4:perl-5.16.3-295.el7.x86_64
--> Processing Dependency: perl(Pod::Simple::Search) for package: 4:perl-5.16.3-295.el7.x86_64
--> Processing Dependency: perl(Filter::Util::Call) for package: 4:perl-5.16.3-295.el7.x86_64
--> Processing Dependency: perl(Carp) for package: 4:perl-5.16.3-295.el7.x86_64
--> Processing Dependency: libperl.so()(64bit) for package: 4:perl-5.16.3-295.el7.x86_64
---> Package perl-Error.noarch 1:0.17020-2.el7 will be installed
---> Package perl-Exporter.noarch 0:5.68-3.el7 will be installed
---> Package perl-File-Path.noarch 0:2.09-2.el7 will be installed
---> Package perl-File-Temp.noarch 0:0.23.01-3.el7 will be installed
---> Package perl-Getopt-Long.noarch 0:2.40-3.el7 will be installed
--> Processing Dependency: perl(Pod::Usage) >= 1.14 for package: perl-Getopt-Long-2.40-3.el7.noarch
--> Processing Dependency: perl(Text::ParseWords) for package: perl-Getopt-Long-2.40-3.el7.noarch
---> Package perl-Git.noarch 0:1.8.3.1-23.el7_8 will be installed
---> Package perl-PathTools.x86_64 0:3.40-5.el7 will be installed
---> Package perl-TermReadKey.x86_64 0:2.30-20.el7 will be installed
---> Package rsync.x86_64 0:3.1.2-10.el7 will be installed
--> Running transaction check
---> Package groff-base.x86_64 0:1.22.2-8.el7 will be installed
---> Package perl-Carp.noarch 0:1.26-244.el7 will be installed
---> Package perl-Filter.x86_64 0:1.49-3.el7 will be installed
---> Package perl-Pod-Simple.noarch 1:3.28-4.el7 will be installed
--> Processing Dependency: perl(Pod::Escapes) >= 1.04 for package: 1:perl-Pod-Simple-3.28-4.el7.noarch
--> Processing Dependency: perl(Encode) for package: 1:perl-Pod-Simple-3.28-4.el7.noarch
---> Package perl-Pod-Usage.noarch 0:1.63-3.el7 will be installed
--> Processing Dependency: perl(Pod::Text) >= 3.15 for package: perl-Pod-Usage-1.63-3.el7.noarch
--> Processing Dependency: perl-Pod-Perldoc for package: perl-Pod-Usage-1.63-3.el7.noarch
---> Package perl-Scalar-List-Utils.x86_64 0:1.27-248.el7 will be installed
---> Package perl-Socket.x86_64 0:2.010-5.el7 will be installed
---> Package perl-Storable.x86_64 0:2.45-3.el7 will be installed
---> Package perl-Text-ParseWords.noarch 0:3.29-4.el7 will be installed
---> Package perl-Time-HiRes.x86_64 4:1.9725-3.el7 will be installed
---> Package perl-Time-Local.noarch 0:1.2300-2.el7 will be installed
---> Package perl-constant.noarch 0:1.27-2.el7 will be installed
---> Package perl-libs.x86_64 4:5.16.3-295.el7 will be installed
---> Package perl-macros.x86_64 4:5.16.3-295.el7 will be installed
---> Package perl-threads.x86_64 0:1.87-4.el7 will be installed
---> Package perl-threads-shared.x86_64 0:1.43-6.el7 will be installed
--> Running transaction check
---> Package perl-Encode.x86_64 0:2.51-7.el7 will be installed
---> Package perl-Pod-Escapes.noarch 1:1.04-295.el7 will be installed
---> Package perl-Pod-Perldoc.noarch 0:3.20-4.el7 will be installed
--> Processing Dependency: perl(parent) for package: perl-Pod-Perldoc-3.20-4.el7.noarch
--> Processing Dependency: perl(HTTP::Tiny) for package: perl-Pod-Perldoc-3.20-4.el7.noarch
---> Package perl-podlators.noarch 0:2.5.1-3.el7 will be installed
--> Running transaction check
---> Package perl-HTTP-Tiny.noarch 0:0.033-3.el7 will be installed
---> Package perl-parent.noarch 1:0.225-244.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

================================================================================================
 Package                        Arch           Version                    Repository       Size
================================================================================================
Installing:
 git                            x86_64         1.8.3.1-23.el7_8           updates         4.4 M
Installing for dependencies:
 groff-base                     x86_64         1.22.2-8.el7               base            942 k
 less                           x86_64         458-9.el7                  base            120 k
 perl                           x86_64         4:5.16.3-295.el7           base            8.0 M
 perl-Carp                      noarch         1.26-244.el7               base             19 k
 perl-Encode                    x86_64         2.51-7.el7                 base            1.5 M
 perl-Error                     noarch         1:0.17020-2.el7            base             32 k
 perl-Exporter                  noarch         5.68-3.el7                 base             28 k
 perl-File-Path                 noarch         2.09-2.el7                 base             26 k
 perl-File-Temp                 noarch         0.23.01-3.el7              base             56 k
 perl-Filter                    x86_64         1.49-3.el7                 base             76 k
 perl-Getopt-Long               noarch         2.40-3.el7                 base             56 k
 perl-Git                       noarch         1.8.3.1-23.el7_8           updates          56 k
 perl-HTTP-Tiny                 noarch         0.033-3.el7                base             38 k
 perl-PathTools                 x86_64         3.40-5.el7                 base             82 k
 perl-Pod-Escapes               noarch         1:1.04-295.el7             base             51 k
 perl-Pod-Perldoc               noarch         3.20-4.el7                 base             87 k
 perl-Pod-Simple                noarch         1:3.28-4.el7               base            216 k
 perl-Pod-Usage                 noarch         1.63-3.el7                 base             27 k
 perl-Scalar-List-Utils         x86_64         1.27-248.el7               base             36 k
 perl-Socket                    x86_64         2.010-5.el7                base             49 k
 perl-Storable                  x86_64         2.45-3.el7                 base             77 k
 perl-TermReadKey               x86_64         2.30-20.el7                base             31 k
 perl-Text-ParseWords           noarch         3.29-4.el7                 base             14 k
 perl-Time-HiRes                x86_64         4:1.9725-3.el7             base             45 k
 perl-Time-Local                noarch         1.2300-2.el7               base             24 k
 perl-constant                  noarch         1.27-2.el7                 base             19 k
 perl-libs                      x86_64         4:5.16.3-295.el7           base            689 k
 perl-macros                    x86_64         4:5.16.3-295.el7           base             44 k
 perl-parent                    noarch         1:0.225-244.el7            base             12 k
 perl-podlators                 noarch         2.5.1-3.el7                base            112 k
 perl-threads                   x86_64         1.87-4.el7                 base             49 k
 perl-threads-shared            x86_64         1.43-6.el7                 base             39 k
 rsync                          x86_64         3.1.2-10.el7               base            404 k

Transaction Summary
================================================================================================
Install  1 Package (+33 Dependent packages)

Total download size: 17 M
Installed size: 63 M
Downloading packages:
(1/34): less-458-9.el7.x86_64.rpm                                        | 120 kB  00:00:00
(2/34): git-1.8.3.1-23.el7_8.x86_64.rpm                                  | 4.4 MB  00:00:00
(3/34): groff-base-1.22.2-8.el7.x86_64.rpm                               | 942 kB  00:00:00
(4/34): perl-Carp-1.26-244.el7.noarch.rpm                                |  19 kB  00:00:00
(5/34): perl-5.16.3-295.el7.x86_64.rpm                                   | 8.0 MB  00:00:00
(6/34): perl-Encode-2.51-7.el7.x86_64.rpm                                | 1.5 MB  00:00:00
(7/34): perl-Error-0.17020-2.el7.noarch.rpm                              |  32 kB  00:00:00
(8/34): perl-Exporter-5.68-3.el7.noarch.rpm                              |  28 kB  00:00:00
(9/34): perl-File-Path-2.09-2.el7.noarch.rpm                             |  26 kB  00:00:00
(10/34): perl-File-Temp-0.23.01-3.el7.noarch.rpm                         |  56 kB  00:00:00
(11/34): perl-Filter-1.49-3.el7.x86_64.rpm                               |  76 kB  00:00:00
(12/34): perl-Getopt-Long-2.40-3.el7.noarch.rpm                          |  56 kB  00:00:00
(13/34): perl-Git-1.8.3.1-23.el7_8.noarch.rpm                            |  56 kB  00:00:00
(14/34): perl-HTTP-Tiny-0.033-3.el7.noarch.rpm                           |  38 kB  00:00:00
(15/34): perl-Pod-Escapes-1.04-295.el7.noarch.rpm                        |  51 kB  00:00:00
(16/34): perl-Pod-Perldoc-3.20-4.el7.noarch.rpm                          |  87 kB  00:00:00
(17/34): perl-Pod-Simple-3.28-4.el7.noarch.rpm                           | 216 kB  00:00:00
(18/34): perl-Pod-Usage-1.63-3.el7.noarch.rpm                            |  27 kB  00:00:00
(19/34): perl-Scalar-List-Utils-1.27-248.el7.x86_64.rpm                  |  36 kB  00:00:00
(20/34): perl-Socket-2.010-5.el7.x86_64.rpm                              |  49 kB  00:00:00
(21/34): perl-Storable-2.45-3.el7.x86_64.rpm                             |  77 kB  00:00:00
(22/34): perl-TermReadKey-2.30-20.el7.x86_64.rpm                         |  31 kB  00:00:00
(23/34): perl-Text-ParseWords-3.29-4.el7.noarch.rpm                      |  14 kB  00:00:00
(24/34): perl-Time-HiRes-1.9725-3.el7.x86_64.rpm                         |  45 kB  00:00:00
(25/34): perl-Time-Local-1.2300-2.el7.noarch.rpm                         |  24 kB  00:00:00
(26/34): perl-constant-1.27-2.el7.noarch.rpm                             |  19 kB  00:00:00
(27/34): perl-PathTools-3.40-5.el7.x86_64.rpm                            |  82 kB  00:00:00
(28/34): perl-macros-5.16.3-295.el7.x86_64.rpm                           |  44 kB  00:00:00
(29/34): perl-parent-0.225-244.el7.noarch.rpm                            |  12 kB  00:00:00
(30/34): perl-libs-5.16.3-295.el7.x86_64.rpm                             | 689 kB  00:00:00
(31/34): perl-threads-1.87-4.el7.x86_64.rpm                              |  49 kB  00:00:00
(32/34): perl-threads-shared-1.43-6.el7.x86_64.rpm                       |  39 kB  00:00:00
(33/34): perl-podlators-2.5.1-3.el7.noarch.rpm                           | 112 kB  00:00:00
(34/34): rsync-3.1.2-10.el7.x86_64.rpm                                   | 404 kB  00:00:00
------------------------------------------------------------------------------------------------
Total                                                            17 MB/s |  17 MB  00:00:01
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : groff-base-1.22.2-8.el7.x86_64                                              1/34
  Installing : 1:perl-parent-0.225-244.el7.noarch                                          2/34
  Installing : perl-HTTP-Tiny-0.033-3.el7.noarch                                           3/34
  Installing : perl-podlators-2.5.1-3.el7.noarch                                           4/34
  Installing : perl-Pod-Perldoc-3.20-4.el7.noarch                                          5/34
  Installing : 1:perl-Pod-Escapes-1.04-295.el7.noarch                                      6/34
  Installing : perl-Text-ParseWords-3.29-4.el7.noarch                                      7/34
  Installing : perl-Encode-2.51-7.el7.x86_64                                               8/34
  Installing : perl-Pod-Usage-1.63-3.el7.noarch                                            9/34
  Installing : 4:perl-libs-5.16.3-295.el7.x86_64                                          10/34
  Installing : 4:perl-macros-5.16.3-295.el7.x86_64                                        11/34
  Installing : 4:perl-Time-HiRes-1.9725-3.el7.x86_64                                      12/34
  Installing : perl-Exporter-5.68-3.el7.noarch                                            13/34
  Installing : perl-constant-1.27-2.el7.noarch                                            14/34
  Installing : perl-Socket-2.010-5.el7.x86_64                                             15/34
  Installing : perl-Time-Local-1.2300-2.el7.noarch                                        16/34
  Installing : perl-Carp-1.26-244.el7.noarch                                              17/34
  Installing : perl-Storable-2.45-3.el7.x86_64                                            18/34
  Installing : perl-PathTools-3.40-5.el7.x86_64                                           19/34
  Installing : perl-Scalar-List-Utils-1.27-248.el7.x86_64                                 20/34
  Installing : perl-File-Temp-0.23.01-3.el7.noarch                                        21/34
  Installing : perl-File-Path-2.09-2.el7.noarch                                           22/34
  Installing : perl-threads-shared-1.43-6.el7.x86_64                                      23/34
  Installing : perl-threads-1.87-4.el7.x86_64                                             24/34
  Installing : perl-Filter-1.49-3.el7.x86_64                                              25/34
  Installing : 1:perl-Pod-Simple-3.28-4.el7.noarch                                        26/34
  Installing : perl-Getopt-Long-2.40-3.el7.noarch                                         27/34
  Installing : 4:perl-5.16.3-295.el7.x86_64                                                                                                            28/34
  Installing : 1:perl-Error-0.17020-2.el7.noarch                                                                                                       29/34
  Installing : perl-TermReadKey-2.30-20.el7.x86_64                                                                                                     30/34
  Installing : less-458-9.el7.x86_64                                                                                                                   31/34
  Installing : rsync-3.1.2-10.el7.x86_64                                                                                                               32/34
  Installing : perl-Git-1.8.3.1-23.el7_8.noarch                                                                                                        33/34
  Installing : git-1.8.3.1-23.el7_8.x86_64                                                                                                             34/34
  Verifying  : perl-HTTP-Tiny-0.033-3.el7.noarch                                                                                                        1/34
  Verifying  : perl-threads-shared-1.43-6.el7.x86_64                                                                                                    2/34
  Verifying  : 4:perl-Time-HiRes-1.9725-3.el7.x86_64                                                                                                    3/34
  Verifying  : 1:perl-Pod-Escapes-1.04-295.el7.noarch                                                                                                   4/34
  Verifying  : perl-Exporter-5.68-3.el7.noarch                                                                                                          5/34
  Verifying  : perl-constant-1.27-2.el7.noarch                                                                                                          6/34
  Verifying  : perl-PathTools-3.40-5.el7.x86_64                                                                                                         7/34
  Verifying  : perl-Socket-2.010-5.el7.x86_64                                                                                                           8/34
  Verifying  : git-1.8.3.1-23.el7_8.x86_64                                                                                                              9/34
  Verifying  : 1:perl-parent-0.225-244.el7.noarch                                                                                                      10/34
  Verifying  : perl-TermReadKey-2.30-20.el7.x86_64                                                                                                     11/34
  Verifying  : 4:perl-libs-5.16.3-295.el7.x86_64                                                                                                       12/34
  Verifying  : groff-base-1.22.2-8.el7.x86_64                                                                                                          13/34
  Verifying  : perl-File-Temp-0.23.01-3.el7.noarch                                                                                                     14/34
  Verifying  : 1:perl-Pod-Simple-3.28-4.el7.noarch                                                                                                     15/34
  Verifying  : perl-Time-Local-1.2300-2.el7.noarch                                                                                                     16/34
  Verifying  : 4:perl-macros-5.16.3-295.el7.x86_64                                                                                                     17/34
  Verifying  : 4:perl-5.16.3-295.el7.x86_64                                                                                                            18/34
  Verifying  : perl-Carp-1.26-244.el7.noarch                                                                                                           19/34
  Verifying  : 1:perl-Error-0.17020-2.el7.noarch                                                                                                       20/34
  Verifying  : perl-Storable-2.45-3.el7.x86_64                                                                                                         21/34
  Verifying  : perl-Scalar-List-Utils-1.27-248.el7.x86_64                                                                                              22/34
  Verifying  : perl-Git-1.8.3.1-23.el7_8.noarch                                                                                                        23/34
  Verifying  : perl-Pod-Usage-1.63-3.el7.noarch                                                                                                        24/34
  Verifying  : perl-Encode-2.51-7.el7.x86_64                                                                                                           25/34
  Verifying  : perl-Pod-Perldoc-3.20-4.el7.noarch                                                                                                      26/34
  Verifying  : perl-podlators-2.5.1-3.el7.noarch                                                                                                       27/34
  Verifying  : perl-File-Path-2.09-2.el7.noarch                                                                                                        28/34
  Verifying  : perl-threads-1.87-4.el7.x86_64                                                                                                          29/34
  Verifying  : rsync-3.1.2-10.el7.x86_64                                                                                                               30/34
  Verifying  : perl-Filter-1.49-3.el7.x86_64                                                                                                           31/34
  Verifying  : perl-Getopt-Long-2.40-3.el7.noarch                                                                                                      32/34
  Verifying  : perl-Text-ParseWords-3.29-4.el7.noarch                                                                                                  33/34
  Verifying  : less-458-9.el7.x86_64                                                                                                                   34/34

Installed:
  git.x86_64 0:1.8.3.1-23.el7_8

Dependency Installed:
  groff-base.x86_64 0:1.22.2-8.el7                       less.x86_64 0:458-9.el7                            perl.x86_64 4:5.16.3-295.el7
  perl-Carp.noarch 0:1.26-244.el7                        perl-Encode.x86_64 0:2.51-7.el7                    perl-Error.noarch 1:0.17020-2.el7
  perl-Exporter.noarch 0:5.68-3.el7                      perl-File-Path.noarch 0:2.09-2.el7                 perl-File-Temp.noarch 0:0.23.01-3.el7
  perl-Filter.x86_64 0:1.49-3.el7                        perl-Getopt-Long.noarch 0:2.40-3.el7               perl-Git.noarch 0:1.8.3.1-23.el7_8
  perl-HTTP-Tiny.noarch 0:0.033-3.el7                    perl-PathTools.x86_64 0:3.40-5.el7                 perl-Pod-Escapes.noarch 1:1.04-295.el7
  perl-Pod-Perldoc.noarch 0:3.20-4.el7                   perl-Pod-Simple.noarch 1:3.28-4.el7                perl-Pod-Usage.noarch 0:1.63-3.el7
  perl-Scalar-List-Utils.x86_64 0:1.27-248.el7           perl-Socket.x86_64 0:2.010-5.el7                   perl-Storable.x86_64 0:2.45-3.el7
  perl-TermReadKey.x86_64 0:2.30-20.el7                  perl-Text-ParseWords.noarch 0:3.29-4.el7           perl-Time-HiRes.x86_64 4:1.9725-3.el7
  perl-Time-Local.noarch 0:1.2300-2.el7                  perl-constant.noarch 0:1.27-2.el7                  perl-libs.x86_64 4:5.16.3-295.el7
  perl-macros.x86_64 4:5.16.3-295.el7                    perl-parent.noarch 1:0.225-244.el7                 perl-podlators.noarch 0:2.5.1-3.el7
  perl-threads.x86_64 0:1.87-4.el7                       perl-threads-shared.x86_64 0:1.43-6.el7            rsync.x86_64 0:3.1.2-10.el7

Complete!
[root@stapp02 ~]# git --version
git version 1.8.3.1
[root@stapp02 ~]#
[root@stapp02 ~]# sudo yum list installed | grep git
git.x86_64                                1.8.3.1-23.el7_8              @updates
[root@stapp02 ~]#
The environment has expired.

Please refresh to get a new environment.