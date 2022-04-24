# 1. 安装 PSReadline 包，该插件可以让命令行很好用，类似 zsh
Install-Module -Name PSReadLine  -Scope CurrentUser

# 2. 安装 posh-git 包，让你的 git 更好用
Install-Module posh-git  -Scope CurrentUser

# 3. 安装 oh-my-posh 包，让你的命令行更酷炫、优雅
Install-Module oh-my-posh -Scope CurrentUser

# 4. 安装Scoop
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')


# 5. 安装RipGrep
Scoop Install RipGrep


# 6. 下载安装字体
https%3A//github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
这里仅推荐一款字体：Fira Code Nerd Font。该字体支持 ligature 连字功能，而且是一款专门为代码显示准备的字体，该字体也支持很多有趣的特殊字符，非常适合在终端里使用。该字体开源，广受海内外程序员好评！



# 7. 替换Profile文件
直接 在PowerShell中,使用notepad $Profile 打开文件  复制自己的配置进去就可以了
