@echo off
:: 384--:快速打开网站

Goto 打开多个程序

Goto Start2

:: m1
:Start
Title 面板一  部署备份
:: 绿色 Color 2f
Color 3f 
MODE con: Cols=40 Lines=35
Set tle=完整备份部署发布
Set var=0
::Set 来的窗口=Start

:Menu
Set 来的窗口=Start
cls
echo 标题:「 %tle% 」
echo ---------------------------------------
echo 菜单:
echo       ⑴  部署feichang99  √
echo.
echo       ⑵  备份f_posts
echo.
echo       ⑶  部署awzanl        √
echo.
echo       ⑷  备份Chrome书签
echo.
echo       ⑸  备份整个F
echo.
echo       ⑹  代理网
echo.
echo       ⑺  部署4000  √
echo.
echo       ⑻  部署5000  √
echo.
echo       ⑼  新建文章 
echo.
echo       ⑽  清理内存
echo.
echo       ⑾  清理网卡内存重置
echo.
echo       ⑿  备份1、备份完整部署
echo.
echo       ⒀  清空回收站及Temp
echo.
echo       Ｑ  退出     15
echo.
echo ---------------------------------------
if %var% neq 0 echo (输入无效请重新输入)
Set choice=
Set /p choice=选择:
Set "choice=%choice:"=%"
if "%choice:~-1%"=="=" Goto Menu
if "%choice%"=="" Goto Menu
if /i "%choice%" == "1" cls&Goto 部署feichang99
if /i "%choice%" == "2" cls&Goto 备份f_posts
if /i "%choice%" == "3" cls&Goto 部署awzanl
if /i "%choice%" == "4" cls&Goto 备份Chrome书签
if /i "%choice%" == "5" cls&Goto 备份整个F
if /i "%choice%" == "6" cls&Goto 快速代理面板
if /i "%choice%" == "*" cls&Goto Start2
if /i "%choice%" == "7" cls&Goto 部署4000
if /i "%choice%" == "8" cls&Goto 部署5000
if /i "%choice%" == "9" cls&Goto 新建文章
if /i "%choice%" == "10" cls&Set 回到来的窗口=Start&Goto 清理内存   
if /i "%choice%" == "11" cls&Goto 清理网卡内存重置
if /i "%choice%" == "12" cls&Goto 备份1、备份完整部署
if /i "%choice%" == "13" cls&Goto 清空回收站及Temp
if /i "%choice%" == "15" cls&Goto 代理目录
if /i "%choice%" == "18" cls&Goto 打开双
if /i "%choice%" == "r" cls&Goto RestTeredo
if /i "%choice%" == "q" Popd&Exit
if /i "%choice%" == "001" cls&Goto %来的窗口1%
Set var=1
Goto Menu

:打开双
Set /p 双成=请输入暗号:
start /max "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  --enable-features=WebUIDarkMode --force-dark-mode  "https://www.laokgg.tk/ctor/%双成%.html"
Set 双成=
Goto End

:清空回收站及Temp
@rd /s /q %windir%\temp
@rd /s /q C:\Users\3\AppData\Local\Temp
@rd /s /q C:\$RECYCLE.BIN
@rd /s /q d:\$RECYCLE.BIN
@rd /s /q e:\$RECYCLE.BIN
@rd /s /q f:\$RECYCLE.BIN
@rd /s /q g:\$RECYCLE.BIN
Goto End

:部署feichang99
MODE con: Cols=88 Lines=32
::Title 开始正在部署99，请稍后。。。
g:
CD g:\f
::Title 正在清除了你之前生成的东西，请稍后。。。
echo.
echo 开始清除之前生成
echo.
call hexo clean
::Title 正在生成静态文章，请稍后。。。
cls
echo.
echo 开始生成静态文章，请稍后。。。
echo.
call hexo g
::Title 正在部署文章，请稍后。。。
cls
echo.
echo 开始部署文章，请稍后。。。
echo.
call hexo d
pause
::Title CMD
echo ----------部署feichang99:>>E:\电脑\快捷\备份df记录.txt  %date% %time%>>E:\电脑\快捷\备份df记录.txt
echo. >>E:\电脑\快捷\备份df记录.txt
Goto End

:备份f_posts
echo 正在备份99，请稍后。。。
MODE con: Cols=88 Lines=32
echo  D | xcopy "G:\f\source\_posts" "J:\f\source\_posts" /e /y /h /k /J /v
echo -----备份f_posts:>>E:\电脑\快捷\备份df记录.txt  %date% %time%>>E:\电脑\快捷\备份df记录.txt
echo. >>E:\电脑\快捷\备份df记录.txt
pause
Goto End

:部署awzanl
正在部署awz，请稍后。。。
MODE con: Cols=88 Lines=32
f:
CD f:\d
echo.
echo 开始清除之前生成
echo.
call hexo clean
cls
echo.
echo 开始生成静态文章，请稍后。。。
echo.
call hexo g
cls
echo.
echo 开始部署文章，请稍后。。。
echo.
call hexo d
pause
echo **********部署awzanl:>>E:\电脑\快捷\备份df记录.txt  %date% %time%>>E:\电脑\快捷\备份df记录.txt
echo. >>E:\电脑\快捷\备份df记录.txt
Goto End

:部署4000
MODE con: Cols=40 Lines=32
echo 正在部署4000，请稍后。。。
start /min "" "E:\电脑\hexo快捷\启动localhost4000.bat"
ping 127.1 -n 3 >nul
start chrome.exe  "http://localhost:4000"
Goto End

:部署5000
MODE con: Cols=40 Lines=32
echo 正在部署5000，请稍后。。。
start /min "" "E:\电脑\hexo快捷\启动localhost5000.bat"
ping 127.1 -n 9 >nul
start chrome.exe  "http://localhost:5000"
Goto End


:备份Chrome书签
echo 正在备份awz，请稍后。。。
MODE con: Cols=88 Lines=32
xcopy "C:\Users\3\AppData\Local\Google\Chrome\User Data\Default\Bookmarks"  "G:\f\source\_posts\bat文章\bat\"  /Y
xcopy "C:\Users\3\AppData\Local\Google\Chrome\User Data\Default\Favicons"  "G:\f\source\_posts\bat文章\bat\"  /Y
xcopy "E:\zhuomian\完整2222222.bat"  "G:\f\source\_posts\bat文章\bat\"  /Y
echo *****备份Chrome书签:>>E:\电脑\快捷\备份df记录.txt  %date% %time%>>E:\电脑\快捷\备份df记录.txt
echo. >>E:\电脑\快捷\备份df记录.txt
pause
Goto End

:备份整个F
echo 正在备份99，请稍后。。。
MODE con: Cols=88 Lines=32
echo  D | xcopy "G:\f\" "J:\f" /e /y /h /k /J /v
echo 备份整个F:>>E:\电脑\快捷\备份df记录.txt  %date% %time%>>E:\电脑\快捷\备份df记录.txt
echo. >>E:\电脑\快捷\备份df记录.txt
pause
Goto End

:: 面板 m3 *********************************************************************
:代理目录
Color f0
MODE con: Cols=40 Lines=35
Set tle5=服务器选项
Set var5=0
::Set 来的窗口=代理目录

:代理面板
::Set 来的窗口1=%来的窗口%
Set 来的窗口=代理目录
Set 服务1变量=https://1.wv1.workers.dev/
Set 服务2变量=https://z.zha.workers.dev/
Set 服务3变量=https://zj.xiaojin.workers.dev/
Set 服务4变量=https://j.zjz.workers.dev/
Set 服务5变量=https://j.xj2.workers.dev/
Set 服务6变量=https://1.y029.workers.dev/
Set 服务7变量=https://1.kled.workers.dev/
Set 服务8变量=https://1.yd029.workers.dev/
Set 服务9变量=https://1.yd139.workers.dev/
cls
echo 标题:「 %tle5% 」
echo ---------------------------------------
echo 菜单:
echo       1  号服务器
echo.
echo       2  号服务器
echo.
echo       3  号服务器
echo.
echo       4  号服务器
echo.
echo       5  号服务器
echo.
echo       6  号服务器
echo.
echo       7  号服务器
echo.
echo       8  号服务器
echo.
echo       9  号服务器
echo.
echo       0  回到主菜单       Ｑ  退出
echo.
echo ---------------------------------------
if %var5% neq 0 echo (输入无效请重新输入)
Set choice5=
Set /p choice5=选择: 
Set "choice5=%choice5:"=%"
if "%choice5:~-1%"=="=" Goto 代理面板
if "%choice5%"=="" Goto 代理面板
if /i "%choice5%" == "1" cls&Set tle6=一号服务器&Set 服务变量=%服务1变量%&Goto 进入网站大目录
if /i "%choice5%" == "2" cls&Set tle6=二号服务器&Set 服务变量=%服务2变量%&Goto 进入网站大目录
if /i "%choice5%" == "3" cls&Set tle6=三号服务器&Set 服务变量=%服务3变量%&Goto 进入网站大目录
if /i "%choice5%" == "4" cls&Set tle6=四号服务器&Set 服务变量=%服务4变量%&Goto 进入网站大目录
if /i "%choice5%" == "5" cls&Set tle6=五号服务器&Set 服务变量=%服务5变量%&Goto 进入网站大目录
if /i "%choice5%" == "6" cls&Set tle6=六号服务器&Set 服务变量=%服务6变量%&Goto 进入网站大目录
if /i "%choice5%" == "7" cls&Set tle6=七号服务器&Set 服务变量=%服务7变量%&Goto 进入网站大目录
if /i "%choice5%" == "8" cls&Set tle6=八号服务器&Set 服务变量=%服务8变量%&Goto 进入网站大目录
if /i "%choice5%" == "9" cls&Set tle6=九号服务器&Set 服务变量=%服务9变量%&Goto 进入网站大目录
if /i "%choice5%" == "0" cls&Goto 回到主菜单
if /i "%choice5%" == "**" cls&Goto Start2
if /i "%choice5%" == "001" cls&Goto %来的窗口1%
Set var5=1
Goto 代理面板

:进入网站大目录
Color 5F
MODE con: Cols=40 Lines=35
Set var6=0
::Set 来的窗口=进入网站大目录

:进入网站目录
::Set 来的窗口1=%来的窗口%
Set 来的窗口=进入网站大目录
Set 谷歌=
Set 油管=https://www.youtube.com/
Set 东森财经=https://youtu.be/q8u9qK5niss
Set 东森51=https://www.youtube.com/watch?v=RaIJ767Bj_M
Set 报新闻51=https://www.youtube.com/channel/UCUj9oqtKhwSfM6YWD3qyMnQ
Set 中天新闻=https://www.youtube.com/watch?v=wUPPkSANpyo
Set 大世界=https://www.youtube.com/results?search_query=大世界
Set 阿波罗=https://www.aboluowang.com/indext.html
Set 这不是新闻=https://www.youtube.com/results?search_query=这不是新闻
cls
echo 标题:「 %tle6% 」
echo ---------------------------------------
echo 菜单:
echo       1  谷歌搜索
echo.
echo       2  油管主页
echo.
echo       3  东森财经
echo.
echo       4  东森51
echo.
echo       5  51新闻报
echo.
echo       6  中天新闻
echo.
echo       7  大世界
echo.
echo       8  阿波罗新闻网
echo.
echo       9  这不是新闻
echo.
echo       10  待添加  输入无效
echo.
echo       11  待添加  输入无效  
echo.
echo       0 回到上个菜单   00 回到主菜单       
echo.
echo ---------------------------------------
if %var6% neq 0 echo (输入无效请重新输入)
Set choice6=
Set /p choice6=选择: 
Set "choice6=%choice6:"=%"
if "%choice6:~-1%"=="=" Goto 进入网站目录
if "%choice6%"=="" Goto 进入网站目录
if /i "%choice6%" == "1" cls&Goto 打开网站2
if /i "%choice6%" == "2" cls&Set 网址变量=%油管%&Goto 打开网站
if /i "%choice6%" == "3" cls&Set 网址变量=%东森财经%&Goto 打开网站
if /i "%choice6%" == "4" cls&Set 网址变量=%东森51%&Goto 打开网站
if /i "%choice6%" == "5" cls&Set 网址变量=%报新闻51%&Goto 打开网站
if /i "%choice6%" == "6" cls&Set 网址变量=%中天新闻%&Goto 打开网站
if /i "%choice6%" == "7" cls&Set 网址变量=%大世界%&Goto 打开网站
if /i "%choice6%" == "8" cls&Set 网址变量=%阿波罗%&Goto 打开网站
if /i "%choice6%" == "9" cls&Set 网址变量=%这不是新闻%&Goto 打开网站
if /i "%choice%6" == "99" cls&Goto 新建文章
if /i "%choice6%" == "**" cls&Goto Start2
if /i "%choice6%" == "0" cls&Goto 代理目录
if /i "%choice6%" == "00" cls&Goto 回到主菜单
if /i "%choice6%" == "001" cls&Goto %来的窗口1%
Set var6=1
Goto 进入网站目录

:打开网站
start /max "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  --enable-features=WebUIDarkMode --force-dark-mode  "%服务变量%-----%网址变量%"
::start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe --enable-features=WebUIDarkMode --force-dark-mode"  %服务变量%-----%网址变量%
::start chrome.exe %服务变量%-----%网址变量%
Set 网址变量=
Goto 进入网站目录

:打开网站2
start /max "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  --enable-features=WebUIDarkMode --force-dark-mode  "%服务变量%"
Goto 进入网站目录

:: 面板 m2 ****************************************************************************
:Start2
Title 面板二  程序相关
:: 蓝色 Color 3f
Color 2f  
MODE con: Cols=42 Lines=42
Set tle2=打开程序选项
Set var2=0
::Set 来的窗口=Start2

:Menu2
Set 来的窗口=Start2
Set 微信=E:\Program Files\Tencent\WeChat\WeChat.exe
Set 关闭微信=WeChat.exe
::------------------------------
Set 大头针=E:\Program Files (x86)\DeskPins-chs 1.30\DeskPins.exe
Set 关闭大头针=DeskPins.exe
::------------------------------
Set 讯飞语音=E:\Program Files (x86)\iFly Info Tek\iFlyIME\2.1.1611\iFlyVoice.exe
Set 关闭讯飞语音=iFlyVoice.exe
::------------------------------
Set v2=E:\V2\v2rayN.exe
Set 关闭v2=v2rayN.exe
Set 关闭v3=wv2ray.exe
::-------------------------------同会关闭其它同名进程电报
Set 电报2=E:\DB\dianbao2\Telegram\Telegram.exe
Set 关闭电报2=Telegram.exe
::------------------------------ 
Set 播放器=E:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe
Set 关闭播放器=PotPlayerMini64.exe
::------------------------------
Set 发布记录=E:\电脑\快捷\备份df记录.txt
Set 关闭发布记录=notepad.exe
::------------------------------
Set 查ip=E:\Program Files\17monipdb\17monipdb.exe
Set 关闭17查ip=17monipdb.exe
::------------------------------
Set 迅雷5=E:\Program Files\xunlei2\迅雷5.exe
Set 关闭迅雷=Thunder5.exe
::------------------------------
Set 解压缩=E:\WinRAR\WinRAR.exe
Set 关闭解压缩=WinRAR.exe
::------------------------------
Set ssr=E:\fuq\ShadowsocksR4.6.1\ShadowsocksR-dotnet4.0.exe
Set 关闭ssr=ShadowsocksR-dotnet4.0.exe
::------------------------------
Set chrome="chrome.exe --enable-features=WebUIDarkMode --force-dark-mode"
Set 关闭chrome=chrome.exe
::------------------------------
Set IDM="C:\Program Files (x86)\Internet Download Manager\IDMan.exe"
Set 关闭IDM=IDMan.exe
::------------------------------
Set sha1="E:\Program Files (x86)\sha1\HashMyFiles.exe"
Set 关闭sha1=HashMyFiles.exe
::------------------------------
Set 键盘="%windir%\system32\osk.exe"
Set 关闭键盘=osk.exe
::------------------------------
Set 书签便签=F:\gi\BF\windows10\bat\复制便签.bat
::------------------------------
Set BitComet=E:\Program Files\BitComet\BitComet\BitComet.exe
Set 关闭BitComet=BitComet.exe
::------------------------------
cls
echo.
echo 标题:「 %tle2% 」「 %tle6% 」
echo ------------------------------------------
echo.
echo 菜单:（关闭加0）
echo       00  大头针 任务管理 Chrome 
echo.
echo       1  打开微信         16  sha1
echo.
echo       2  大头针           17  firefox
echo.
echo       3  讯飞语音         18  N
echo.
echo       4  打开v2           19  定时57
echo.
echo       5  电报2            20  屏幕键盘
echo.
echo       6  PotPlayer        21  书签便签
echo.
echo       7  发布记录         22  BitComet
echo.
echo       8  17查ip           23  便签
echo.
echo       9  打开迅雷         24  计算器
echo.
echo       10  WinRAR          25 虚拟机
echo.
echo       11  ssr             26 步骤记录器  
echo.
echo       12  Chrome          012 关闭 
echo.
echo       13  IDM             013 关闭
echo.
echo       14  清理内存        15 代理网     
echo.
echo       0  回到主菜单       Ｑ  退出
echo.
echo ------------------------------------------
if %var2% neq 0 echo (输入无效请重新输入)
Set choice2=
Set /p choice2=选择: 
Set "choice2=%choice2:"=%"
if "%choice2:~-1%"=="=" Goto Menu2
if "%choice2%"=="" Goto Menu2
if /i "%choice2%" == "00" cls&Goto 打开多个程序
if /i "%choice2%" == "000" cls&Goto 1关闭打开的软件
if /i "%choice2%" == "1" cls&Set 变量1=%微信%&Goto 1打开软件最小化
if /i "%choice2%" == "01" cls&Set 变量2=%关闭微信%&Goto 1关闭软件
if /i "%choice2%" == "2" cls&Set 变量1=%大头针%&Goto 1打开软件最小化
if /i "%choice2%" == "02" cls&Set 变量2=%关闭大头针%&Goto 1关闭软件
if /i "%choice2%" == "3" cls&Set 变量1=%讯飞语音%&Goto 1打开软件最小化
if /i "%choice2%" == "03" cls&Set 变量2=%关闭讯飞语音%&Goto 1关闭软件
if /i "%choice2%" == "4" cls&Set 变量1=%v2%&Goto 1打开软件最小化
if /i "%choice2%" == "04" cls&Set 变量2=%关闭v2%&Set 变量4=%关闭v3% &Goto 1关闭软件
if /i "%choice2%" == "5" cls&Set 变量3=%电报2%&Goto 1打开软件常规
if /i "%choice2%" == "05" cls&Set 变量2=%关闭电报2%&Goto 1关闭软件
if /i "%choice2%" == "6" cls&Set 变量1=%播放器%&Goto 1打开软件最小化
if /i "%choice2%" == "06" cls&Set 变量2=%关闭播放器%&Goto 1关闭软件
if /i "%choice2%" == "7" cls&Set 变量1=%发布记录%&Goto 1打开软件最小化
if /i "%choice2%" == "07" cls&Set 变量2=%关闭发布记录%&Goto 1关闭软件
if /i "%choice2%" == "8" cls&Set 变量1=%查ip%&Goto 1打开软件最小化
if /i "%choice2%" == "08" cls&Set 变量2=%关闭17查ip%&Goto 1关闭软件
if /i "%choice2%" == "9" cls&Set 变量1=%迅雷5%&Goto 1打开软件最小化
if /i "%choice2%" == "09" cls&Set 变量2=%关闭迅雷%&Goto 1关闭软件
if /i "%choice2%" == "10" cls&Set 变量1=%解压缩%&Goto 1打开软件最小化
if /i "%choice2%" == "010" cls&Set 变量2=%关闭解压缩%&Goto 1关闭软件
if /i "%choice2%" == "11" cls&Set 变量1=%ssr%&Goto 1打开软件最小化
if /i "%choice2%" == "011" cls&Set 变量2=%关闭ssr%&Goto 1关闭软件
if /i "%choice2%" == "12" cls&Set 变量5=%Chrome%&Goto 1打开软件最大化
if /i "%choice2%" == "012" cls&Set 变量2=%关闭Chrome%&Goto 1关闭软件
if /i "%choice2%" == "13" cls&Set 变量1="%IDM%"&Goto 1打开软件最小化
if /i "%choice2%" == "013" cls&Set 变量2=%关闭IDM%&Goto 1关闭软件
if /i "%choice2%" == "16" cls&Set 变量3="%sha1%"&Goto 1打开软件常规
if /i "%choice2%" == "016" cls&Set 变量2=%关闭sha1%&Goto 1关闭软件
if /i "%choice2%" == "17" cls&start  "" "C:\Program Files (x86)\Mozilla Firefox\firefox.exe"&Goto Start2
if /i "%choice2%" == "017" cls&taskkill /im firefox.exe /f&Goto Start2
if /i "%choice2%" == "19" cls&schtasks /create /tn 定时51 /tr  "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe --enable-features=WebUIDarkMode --force-dark-mode https://www.youtube.com/watch?v=dphWo0r27Z4"  /sc once  /st 19:00:00 /f&Goto Start2
if /i "%choice2%" == "20" cls&Set 变量3="%键盘%"&Goto 1打开软件常规
if /i "%choice2%" == "020" cls&Set 变量2=%关闭键盘%&Goto 1关闭软件
if /i "%choice2%" == "21" cls&Set 变量1="%书签便签%"&Goto 1打开软件最小化
if /i "%choice2%" == "22" cls&Set 变量3=%BitComet%&Goto 1打开软件常规
if /i "%choice2%" == "022" cls&Set 变量2=%关闭BitComet%&Goto 1关闭软件
if /i "%choice2%" == "23" cls&start /max "" "E:\工具\便笺 - 快捷方式.lnk"&Goto Menu2
if /i "%choice2%" == "24" cls&start /max "" "E:\工具\计算器 - 快捷方式.lnk"&Goto Menu2
if /i "%choice2%" == "25" cls&start /max "" "E:\工具\Windows Sandbox - 快捷方式.lnk"&Goto Menu2
if /i "%choice2%" == "26" cls&start /max "" "E:\工具\步骤记录器 - 快捷方式.lnk"&Goto Menu2
::删除任务schtasks /delete /tn 定时51  /f
if /i "%choice2%" == "019" cls&schtasks /delete /tn 定时51  /f&Goto Start2
if /i "%choice2%" == "0" cls&Goto 回到主菜单
if /i "%choice2%" == "14" cls&Set 回到来的窗口=Start2&Goto 清理内存
if /i "%choice2%" == "15" cls&Goto 快速代理面板
if /i "%choice2%" == "155" cls&Goto 快速进入网站目录
if /i "%choice2%" == "18" cls&Goto 打开双
if /i "%choice2%" == "99" cls&Goto 新建文章
if /i "%choice2%" == "150" cls&Goto 代理目录
if /i "%choice2%" == "**" cls&Goto 简述界面
if /i "%choice2%" == "***" cls&Goto 系统面板
if /i "%choice2%" == "001" cls&Goto %来的窗口1%
if /i "%choice2%" == "r" cls&Goto RestTeredo
if /i "%choice2%" == "q" Popd&Exit
::以下为主面板
if /i "%choice2%" == "*1" cls&Goto 部署feichang99
if /i "%choice2%" == "*2" cls&Goto 备份f_posts
if /i "%choice2%" == "*3" cls&Goto 部署awzanl
if /i "%choice2%" == "*4" cls&Goto 备份Chrome书签
if /i "%choice2%" == "*5" cls&Goto 备份整个F
if /i "%choice2%" == "*7" cls&Goto 部署4000
if /i "%choice2%" == "*8" cls&Goto 部署5000
if /i "%choice2%" == "*11" cls&Goto 清理网卡内存重置
if /i "%choice2%" == "*12" cls&Goto 备份1、备份完整部署
if /i "%choice2%" == "*13" cls&Goto 清空回收站及Temp
if /i "%choice2%" == "*18" cls&Goto 打开双
Set var2=1
Goto Menu2



:1打开软件最小化
start /min "" "%变量1%"
Set 变量1=
Goto Start2

:1打开软件常规
start  "" "%变量3%"
Set 变量3=
Goto Start2

:1打开软件最大化
start  "" "%变量5%"
Set 变量5=
Goto Start2

:打开多个程序
MODE con: Cols=40 Lines=32
echo 正在打开中，请稍后。。。
start /min "" "C:\Windows\System32\Taskmgr.exe"
start /min "" "E:\Program Files (x86)\DeskPins-chs 1.30\DeskPins.exe"
start /max "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --enable-features=WebUIDarkMode --force-dark-mode
Goto Start2

:1关闭软件
::taskkill /f /im %变量2%
taskkill /im %变量2% /f
taskkill /im %变量4% /f
Set 变量2=
Set 变量4=
Goto Start2

:1关闭打开的软件
::taskkill /f /im %变量2%
@taskkill /im WeChat.exe /f
cls
@taskkill /im atom.exe /f
cls
@taskkill /im v2rayN.exe /f
cls
@taskkill /im wv2ray.exe /f
cls
@taskkill /im Telegram.exe /f
cls
@taskkill /im PotPlayerMini64.exe /f
cls
@taskkill /im notepad.exe /f
cls
@taskkill /im 17monipdb.exe /f
cls
@taskkill /im Thunder5.exe /f
@taskkill /im IDMan.exe /f
@taskkill /im IEMonitor.exe /f
@taskkill /im ShadowsocksR-dotnet4.0.exe /f
@taskkill /im ShadowsocksR-dotnet4.0.exe /f
::@taskkill /im explorer.exe /f
cls
@taskkill /im WinRAR.exe /f
@taskkill /im HashMyFiles.exe /f
::打开多个程序
@taskkill /im Taskmgr.exe /f
cls
@taskkill /im DeskPins.exe /f
cls
@taskkill /im chrome.exe /f
cls
@taskkill /im firefox.exe /f
Goto Start2

:快速代理面板
Title CMD
Color 2f
MODE con: Cols=40 Lines=35
Set tle5=进入服务器代理
Set var5=0

:快速代理面板1
Set 服务1变量=https://1.wv1.workers.dev/
Set 服务2变量=https://z.zha.workers.dev/
Set 服务3变量=https://zj.xiaojin.workers.dev/
Set 服务4变量=https://j.zjz.workers.dev/
Set 服务5变量=https://j.xj2.workers.dev/
Set 服务6变量=https://1.y029.workers.dev/
Set 服务7变量=https://1.kled.workers.dev/
Set 服务8变量=https://1.yd029.workers.dev/
Set 服务9变量=https://1.yd139.workers.dev/
cls
echo.
echo 标题:「 %tle5% 」
echo ---------------------------------------
if %var5% neq 0 echo (输入无效请重新输入)
Set choice5=
Set /p choice5=选择服务器: 
Set "choice5=%choice5:"=%"
if "%choice5:~-1%"=="=" Goto 快速代理面板1
if "%choice5%"=="" Goto 快速代理面板1
if /i "%choice5%" == "1" cls&Set tle6=一号服务器&Set 服务变量=%服务1变量%&Goto 快速进入网站目录
if /i "%choice5%" == "2" cls&Set tle6=二号服务器&Set 服务变量=%服务2变量%&Goto 快速进入网站目录
if /i "%choice5%" == "3" cls&Set tle6=三号服务器&Set 服务变量=%服务3变量%&Goto 快速进入网站目录
if /i "%choice5%" == "4" cls&Set tle6=四号服务器&Set 服务变量=%服务4变量%&Goto 快速进入网站目录
if /i "%choice5%" == "5" cls&Set tle6=五号服务器&Set 服务变量=%服务5变量%&Goto 快速进入网站目录
if /i "%choice5%" == "6" cls&Set tle6=六号服务器&Set 服务变量=%服务6变量%&Goto 快速进入网站目录
if /i "%choice5%" == "7" cls&Set tle6=七号服务器&Set 服务变量=%服务7变量%&Goto 快速进入网站目录
if /i "%choice5%" == "8" cls&Set tle6=八号服务器&Set 服务变量=%服务8变量%&Goto 快速进入网站目录
if /i "%choice5%" == "9" cls&Set tle6=九号服务器&Set 服务变量=%服务9变量%&Goto 快速进入网站目录
if /i "%choice5%" == "0" cls&Goto 回到主菜单
if /i "%choice5%" == "001" cls&Goto %来的窗口1%
Set var5=1
Goto 快速代理面板1

:快速进入网站目录
Title CMD
Color 2f
MODE con: Cols=40 Lines=35
Set var6=0

:快速进入网站目录1
Set 谷歌=
Set 油管=https://www.youtube.com/
Set 东森财经=https://youtu.be/q8u9qK5niss
Set 东森51=https://www.youtube.com/watch?v=RaIJ767Bj_M
Set 报新闻51=https://www.youtube.com/channel/UCUj9oqtKhwSfM6YWD3qyMnQ
Set 中天新闻=https://www.youtube.com/watch?v=wUPPkSANpyo
Set 大世界=https://www.youtube.com/results?search_query=大世界
Set 阿波罗=https://www.aboluowang.com/indext.html
Set 这不是新闻=https://www.youtube.com/results?search_query=这不是新闻
cls
echo.
echo 标题:「 %tle6% 」
echo ---------------------------------------
if %var6% neq 0 echo (输入无效请重新输入)
Set choice6=
Set /p choice6=选择网址: 
Set "choice6=%choice6:"=%"
if "%choice6:~-1%"=="=" Goto 快速进入网站目录1
if "%choice6%"=="" Goto 快速进入网站目录1
if /i "%choice6%" == "1" cls&Goto 快速打开网站2
if /i "%choice6%" == "2" cls&Set 网址变量=%油管%&Goto 快速打开网站
if /i "%choice6%" == "3" cls&Set 网址变量=%东森财经%&Goto 快速打开网站
if /i "%choice6%" == "4" cls&Set 网址变量=%东森51%&Goto 快速打开网站
if /i "%choice6%" == "5" cls&Set 网址变量=%报新闻51%&Goto 快速打开网站
if /i "%choice6%" == "6" cls&Set 网址变量=%中天新闻%&Goto 快速打开网站
if /i "%choice6%" == "7" cls&Set 网址变量=%大世界%&Goto 快速打开网站
if /i "%choice6%" == "8" cls&Set 网址变量=%阿波罗%&Goto 快速打开网站
if /i "%choice6%" == "9" cls&Set 网址变量=%这不是新闻%&Goto 快速打开网站
if /i "%choice%6" == "99" cls&Goto 新建文章
if /i "%choice6%" == "66" cls&Goto Start2
if /i "%choice6%" == "0" cls&Goto 代理目录
if /i "%choice6%" == "00" cls&Goto 回到主菜单
Set var6=1
Goto 快速进入网站目录1

:快速打开网站
start /max "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  --enable-features=WebUIDarkMode --force-dark-mode  "%服务变量%-----%网址变量%"
::start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe --enable-features=WebUIDarkMode --force-dark-mode"  %服务变量%-----%网址变量%
::start chrome.exe %服务变量%-----%网址变量%
Set 网址变量=
Set 去的窗口=%来的窗口%
Set 来的窗口=
Goto %去的窗口%

:快速打开网站2
start /max "" "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"  --enable-features=WebUIDarkMode --force-dark-mode  "%服务变量%"
Set 去的窗口=%来的窗口%
Set 来的窗口=
Goto %去的窗口%

:回到主菜单
Goto Start



:: 面板 m4 ***************************************************************************

:系统面板
Title 系统
Color 20
MODE con: Cols=42 Lines=42
Set tle=应用
Set var=0

:系统应用目录
Set 来的窗口=系统面板
cls
echo 标题:「 %tle% 」
echo ------------------------------------------
echo 菜单:
echo   ⑴  服务 services.msc  16 便签
echo.
echo   ⑵  任务管理器         17 计算器
echo.
echo   ⑶  防火墙             18 虚拟机
echo.
echo   ⑷  本地安全策略       19 步骤记录器
echo.
echo   ⑸  本地用户及组
echo.
echo   ⑹  本地组策略编辑器
echo.
echo   ⑺  磁盘管理器
echo.
echo   ⑻  共享文件夹
echo.
echo   ⑼  计算机管理
echo.
echo   ⑽  设备管理器
echo.
echo   ⑾  启动杀软
echo.
echo   ⑿  停止杀软
echo.
echo   ⒀  打开注册表
echo.
echo   14  删除运行记录
echo.
echo   15  打开控制面板
echo.
echo   Ｑ  退出     15
echo.
echo ------------------------------------------
if %var% neq 0 echo (输入无效请重新输入)
Set choice=
Set /p choice=选择:
Set "choice=%choice:"=%"
if "%choice:~-1%"=="=" Goto Menu
if "%choice%"=="" Goto Menu
if /i "%choice%" == "1" cls&start  "" "E:\工具\services.msc - 快捷方式.lnk"&Goto 系统面板
if /i "%choice%" == "2" cls&start  "" "E:\工具\taskschd.msc - 快捷方式.lnk"&Goto 系统面板
if /i "%choice%" == "3" cls&start  "" "E:\工具\WF.msc - 快捷方式.lnk"&Goto 系统面板
if /i "%choice%" == "4" cls&start  "" "E:\工具\本地安全策略.lnk"&Goto 系统面板
if /i "%choice%" == "5" cls&start  "" "E:\工具\本地用户及组.lnk"&Goto 系统面板
if /i "%choice%" == "6" cls&start  "" "E:\工具\本地组策略编辑器.lnk"&Goto 系统面板
if /i "%choice%" == "7" cls&start  "" "E:\工具\磁盘管理器.lnk"&Goto 系统面板
if /i "%choice%" == "8" cls&start  "" "E:\工具\共享文件夹.lnk"&Goto 系统面板
if /i "%choice%" == "9" cls&start  "" "E:\工具\计算机管理.lnk"&Goto 系统面板
if /i "%choice%" == "10" cls&start  "" "E:\工具\设备管理器.lnk"&Goto 系统面板   
if /i "%choice%" == "11" cls&start  "" "E:\杀软\启动杀软.bat - 快捷方式.lnk"&Goto 系统面板
if /i "%choice%" == "12" cls&start  "" "E:\杀软\停止杀软.bat - 快捷方式.lnk"&Goto 系统面板
if /i "%choice%" == "13" cls&start  "" "E:\杀软\注册表.bat - 快捷方式.lnk"&Goto 系统面板
if /i "%choice%" == "14" cls&start  "" "E:\杀软\删除运行记录.bat - 快捷方式"&Goto 系统面板  
if /i "%choice%" == "15" cls&start /max "" "control"&Goto 系统面板
if /i "%choice%" == "16" cls&start /max "" "E:\工具\便笺 - 快捷方式.lnk"&Goto 系统面板
if /i "%choice%" == "17" cls&start /max "" "E:\工具\计算器 - 快捷方式.lnk"&Goto 系统面板
if /i "%choice%" == "18" cls&start /max "" "E:\工具\Windows Sandbox - 快捷方式.lnk"&Goto 系统面板
if /i "%choice%" == "19" cls&start /max "" "E:\工具\步骤记录器 - 快捷方式.lnk"&Goto 系统面板
if /i "%choice%" == "115" cls&Goto 代理目录
if /i "%choice%" == "18" cls&Goto 打开双
if /i "%choice%" == "r" cls&Goto RestTeredo
if /i "%choice%" == "q" Popd&Exit
if /i "%choice%" == "001" cls&Goto %来的窗口1%
if /i "%choice%" == "*" cls&Goto Start
if /i "%choice%" == "**" cls&Goto Start2
Set var=1
Goto 系统应用目录


:: 面板 m5 *********************************************************************
:新建文章
Title 面板五  建文件
Color df
MODE con: Cols=40 Lines=20
set 文章数=0
:新建文章开始
Color df
MODE con: Cols=40 Lines=20
if %文章数% neq 0 echo (输入无效请重新输入)
set /p 文章名=请输入文章名:
if /i "%文章名%" == "" cls&set 文章数=1 &Goto 新建文章开始
echo 文章名:%文章名%
echo 创建进行中......稍后
g:
CD g:\f
call hexo new %文章名% 
Goto Start3

:Start3
cls
Color 5f
MODE con: Cols=40 Lines=20
Set tle3=是否转移新建文章
Set var3=0

:Menu3
cls
echo 标题:「 %tle3% 」
echo ---------------------------------------
echo 菜单:
echo       ⑴  选择要转移文件夹目录
echo.
echo       ⑵  转移到新建文件夹下
echo.
echo       0  返回        √
echo ---------------------------------------
if %var3% neq 0 echo (输入无效请重新输入)
Set choice3=
Set /p choice3=选择:
Set "choice3=%choice3:"=%"
if "%choice3:~-1%"=="=" Goto Menu3
if "%choice3%"=="" Goto Menu3
if /i "%choice3%" == "1" cls&Goto ManuTeredo3
if /i "%choice3%" == "2" cls&Goto 新建文件夹f
if /i "%choice3%" == "0" cls&Goto 回到主菜单
Set var3=1
Goto Menu3

:ManuTeredo3
Color 3f
Title CMD
MODE con: Cols=45 Lines=35
Set tle4=目前库文件夹目录
Set var4=0

:文件夹目录
cls
echo 标题:「 %tle4% 」
echo --------------------------------------------
echo 菜单:
echo       ⑴  a
echo.
echo       ⑵  bat文章
echo.
echo       ⑶  Google
echo.
echo       ⑷  hexo
echo.
echo       ⑸  windows
echo.
echo       ⑹  z
echo.
echo       ⑺  代理
echo.
echo       ⑻  软件  
echo.
echo       ⑼  生活
echo.
echo       0  回到上个菜单
echo.
echo       00 回到主菜单
echo.
::echo       ⑾  目前没有
echo ---------------------------------------
if %var4% neq 0 echo (输入无效请重新输入)
Set choice4=
Set /p choice4=选择:
Set "choice4=%choice4:"=%"
if "%choice4:~-1%"=="=" Goto 文件夹目录
if "%choice4%"=="" Goto 文件夹目录
if /i "%choice4%" == "1" cls&Goto 文件夹a
if /i "%choice4%" == "2" cls&Goto 文件夹bat文章
if /i "%choice4%" == "3" cls&Goto 文件夹Google
if /i "%choice4%" == "4" cls&Goto 文件夹hexo
if /i "%choice4%" == "5" cls&Goto 文件夹windows
if /i "%choice4%" == "6" cls&Goto 文件夹z
if /i "%choice4%" == "7" cls&Goto 文件夹代理
if /i "%choice4%" == "8" cls&Goto 文件夹软件
if /i "%choice4%" == "9" cls&Goto 文件夹生活
if /i "%choice4%" == "10" cls&Goto 文件夹
if /i "%choice4%" == "0" cls&Goto Start3
if /i "%choice4%" == "00" cls&Goto 回到主菜单
if /i "%choice4%" == "r" cls&Goto RestTeredo
if /i "%choice4%" == "q" Popd&Exit
Set var4=1
Goto 文件夹目录

:文件夹a
move G:\f\source\_posts\%文章名%.md  G:\f\source\_posts\a
move G:\f\source\_posts\%文章名%  G:\f\source\_posts\a
Goto End

:文件夹bat文章
move G:\f\source\_posts\%文章名%.md  G:\f\source\_posts\bat文章
move G:\f\source\_posts\%文章名%  G:\f\source\_posts\bat文章
Goto End

:文件夹Google
move G:\f\source\_posts\%文章名%.md  G:\f\source\_posts\Google
move G:\f\source\_posts\%文章名%  G:\f\source\_posts\Google
Goto End

:文件夹hexo
move G:\f\source\_posts\%文章名%.md  G:\f\source\_posts\hexo
move G:\f\source\_posts\%文章名%  G:\f\source\_posts\hexo
Goto End

:文件夹windows
move G:\f\source\_posts\%文章名%.md  G:\f\source\_posts\windows
move G:\f\source\_posts\%文章名%  G:\f\source\_posts\windows
Goto End

:文件夹z
move G:\f\source\_posts\%文章名%.md  G:\f\source\_posts\z
move G:\f\source\_posts\%文章名%  G:\f\source\_posts\z
Goto End

:文件夹代理
move G:\f\source\_posts\%文章名%.md  G:\f\source\_posts\代理
move G:\f\source\_posts\%文章名%  G:\f\source\_posts\代理
Goto End

:文件夹软件
move G:\f\source\_posts\%文章名%.md  G:\f\source\_posts\软件
move G:\f\source\_posts\%文章名%  G:\f\source\_posts\软件
Goto End

:文件夹生活
move G:\f\source\_posts\%文章名%.md  G:\f\source\_posts\生活
move G:\f\source\_posts\%文章名%  G:\f\source\_posts\生活
Goto End


:新建文件夹f
set 文件夹数=0
:新建文件夹f开始
Color df
MODE con: Cols=40 Lines=20
if %文件夹数% neq 0 echo (输入无效请重新输入)
set /p 文件夹名=请输入文件夹名:
if /i "%文件夹名%" == "" cls&set 文件夹数=1 &Goto 新建文件夹f开始
echo 文件夹名:%文件夹名%
md  G:\f\source\_posts\%文件夹名%
move G:\f\source\_posts\%文章名%.md  G:\f\source\_posts\%文件夹名%
move G:\f\source\_posts\%文章名%  G:\f\source\_posts\%文件夹名%
Goto End

:清理内存
echo 正在清理，请稍后。。。
::MODE con: Cols=88 Lines=32
@taskkill /f /im explorer.exe&start explorer.exe
@ping -n 3 127.0.0.1>nul
@taskkill /f /im explorer.exe&start explorer.exe
Goto End

:清理网卡内存重置
echo 正在清理，请稍后。。。
MODE con: Cols=88 Lines=32
start E:\电脑\1\网卡.lnk
Goto End

:备份1、备份完整部署
echo 正在备份99，请稍后。。。
MODE con: Cols=88 Lines=32
xcopy "E:\电脑\hexo快捷\完整部署备份.bat" "G:\f\source\_posts\bat\"  /y 
echo -----备份完整部署备份.bat:>>E:\电脑\快捷\备份df记录.txt  %date% %time%>>E:\电脑\快捷\备份df记录.txt
echo. >>E:\电脑\快捷\备份df记录.txt
pause
Goto End

:End
Set 去的窗口=%来的窗口%
Set 来的窗口=
ping 127.1 -n 1 >nul
cls
MODE con: Cols=40 Lines=23
echo 操作完成 !!!
Goto %去的窗口%

:End2
Set 去的窗口=%来的窗口%
Set 来的窗口=
ping 127.1 -n 1 >nul
cls
MODE con: Cols=40 Lines=23
echo 操作完成 !!!
Goto %去的窗口%

:End3
Set choice=0
if "%choice%" neq "" (
    cls
    Color 2e
    MODE con: Cols=40 Lines=23
    if "%choice%" neq "3" (
        echo 操作完成 !!!
        if exist %WINDIR%\System32\timeout.exe (timeout /t 2) else (if exist %WINDIR%\System32\choice.exe (choice /t 2 /d y /n >nul) else (ping 127.1 -n 2 >nul))
    )
    Goto Start2
)

:: 面板 m6 ********************************************************************
:简述界面
MODE con: Cols=40 Lines=35
Set tle0=简述说明
Set var0=0

:简述说明
cls
echo 标题:「 %tle0% 」
echo ---------------------------------------
echo       
echo       00  大头针 任务管理 Chrome 
echo.
echo       1  打开微信         01  关闭
echo.
echo       2  Atom             02  关闭
echo.
echo       3  讯飞语音         03  关闭
pause  
Set 去的窗口=%来的窗口%
Set 来的窗口=
Goto %去的窗口%    