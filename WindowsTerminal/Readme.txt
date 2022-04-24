# 1. 导入配置
打开WindowsTerminal, 复制Settings.json全部内容


# 2. 生成右键菜单
Set-ExecutionPolicy Bypass -Scope Process -Force; 
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/qianfanguojin/windowsterminal-menu/master/install.ps1'))


# 3. 需要搭配我自己的ahk脚本使用,体验更佳
https://github.com/WeiWan5675/Ahk-Script-Manager