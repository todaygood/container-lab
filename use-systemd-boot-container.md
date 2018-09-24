

https://fugangqiang.github.io/posts/linux/systemd-nspawn%E6%90%AD%E5%BB%BA%E5%AE%B9%E5%99%A8.html

https://www.linuxprobe.com/fedora-systemd-nspawn.html

systemd 系列组件大多都有一个 -M 选项，此选项就是用来指定容器，容器搜索路径与 machinectl 一样。


systemd-nspawn 中文手册
http://www.jinbuguo.com/systemd/systemd-nspawn.html

# rkt使用systemd-nspawn作为它的容器后端
https://www.zybuluo.com/babydragon/note/176874

systemd现在也包含了一个命令systemd-nspawn用于管理容器。起初编写这个命令的目的是为了测试systemd，但是现在它已经可以作为生产用途。事实上，CoreOS的rkt容器工具，已经在使用这个命令作为底层容器后段。

更多systemd和容器、操作系统相关内容，可以观看Lennart在CoreOS Fest上的演讲：systemd at the Core of the OS。

systemd和其他容器工具的结合
目前systemd和rkt的结合已经基本上完成，rkt使用systemd-nspawn作为它的容器后端。对于systemd的开发者来说，他们更加希望systemd能够专注于单机的管理，而上层的工具，如rkt，可以基于systemd，提供诸如分布式、网络感知高级等功能。
