# UbuntuAutoScript
Linux Auto Configuration Script- Linux 软件自动安装配置脚本


作者注

写这个脚本的原因是因为作者是个菜逼又苦逼，但是又手贱的蛋疼的程序猿 ` 一枚, 我有一颗强烈的好奇心，但是同时又有一双︿(￣︶￣)︿非常贱贱的双手，所以当作者在安装了无数个Linux发行版之后，再疲于每一次安装都需要重新安装软件，配置各种环境变量的生活，毅然决然的用自己的双手写下了这个这个简单的自动化配置安装软件脚本，我对Linux并不是特别的精通， 所以这个脚本非常通俗易懂，高手可以忽略，新手可以看看

    脚本已经在Github开源，欢迎随时
    Start
    Fork
    Issue
    作者精力有限，所以还有什么没有想到希望大家多提意见
    https://github.com/SickoOrange/UbuntuAutoScript/



这个Bash Script都帮我们干了啥？

这里简单列举一下这个Bash Script的功能：

1. 更新系统的软件源
2. 针对Ubuntu16.04:
   - 自动下载安装Gnome桌面
   - 自动下载安装 Dash To Dock插件 (就是类似苹果的软件栏)
   - 自动下载安装 ARC 风格主题
   - 自动下载安装 Flat Remix 扁平化图标
3. 自动配置 Node Js 以及 npm, 开箱即用
4. 自动下载配置 Oracle JDK，版本  1.8.0_151, 同时自动配置环境变量
       打开Terminal
       
       输入 java -version 验证是否正确安装
5. 自动下载安装Linux版本的Markdown写作神器 Typora
6. 安装常用小工具：
```
       Git    -- 版本控制软件
       Curl   -- 调试网络连接的小工具
       Gdebi  -- 有些deb软件不能通过默认安装器安装的, 可以试试他
       Vim    -- 不说了撸代码神器
       Unzip  --linux解压zip压缩文件
 ```
7. 自动下载安装常用的软件：
```
       Visual Studio Code
       Genymotion
       Skype
       Android Studio
       IntellijIDEA
 ```
   最后
   最后，时间仓促，目前就想到这么多，以后有什么需要的工具还会继续更新，如果大家有什么想法或者意见可以给我留言， 或者直接在Github上fork.
