# 1. 导入配置
打开WindowsTerminal, 复制Settings.json全部内容


# 2. 生成右键菜单 https://blog.csdn.net/jiunian_2761/article/details/121367407
将下面的代码依次 (2 行) 复制到 Powershell 7 (管理员权限) 的控制台中运行：
Set-ExecutionPolicy Bypass -Scope Process -Force; 
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/qianfanguojin/windowsterminal-menu/master/install.ps1'))


# 3. 需要搭配ahk脚本使用,体验更佳
https://github.com/WeiWan5675/Ahk-Script-Manager

# 4. windowsterminal美化
https://windowsterminalthemes.dev/
