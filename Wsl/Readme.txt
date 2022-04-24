#1. 安装wsl2
	略
#2. 设置环境变量隔离
sudo vim /etc/wsl.conf
# 不加载Windows中的PATH内容
[interop]
appendWindowsPath = false

# 不自动挂载Windows系统所有磁盘分区
[automount]
enabled = false


#3. 安装zsh以及oh-my-zsh

安装 zsh
先看下自己有哪一些 shell

cat /etc/shells
如果没有 zsh 需要安装

sudo apt-get install zsh #Ubuntu Linux记得先升级下 apt-get
sudo yum install zsh #Redhat Linux

chsh -s /bin/zsh #安装完成后设置当前用户使用 zsh 并重启 wsl
安装 oh my zsh
此时我们需要下载 oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
看项目 readme 还是写的非常详细的，安装好后重启 wsl 便是用的 oh my zsh

此时我们可以根据该项目 readme 切换主题

sudo apt-get install vim #debain 默认命令 vi 并没有安装 vim
vi ~/.zshrc
修改

ZSH_THEME="agnoster"
保存后

source ~/.zshrc

#3. WindowsTerminal链接Wsl
	略, 一般我的配置文件导入后就可以了



#4. wsl -t xxxx 停止 然后重新启动就好了

