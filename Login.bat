@echo off
for /l %%n in (1, 1 ,1) do echo Set IE = CreateObject("InternetExplorer.Application") >> %temp%\login.vbs
for /l %%n in (1, 1 ,1) do echo set WshShell = WScript.CreateObject("WScript.Shell")  >> %temp%\login.vbs 
for /l %%n in (1, 1 ,1) do echo IE.Navigate "http://www.quora.com"  >> %temp%\login.vbs
for /l %%n in (1, 1 ,1) do echo IE.Visible = True  >> %temp%\login.vbs
for /l %%n in (1, 1 ,1) do echo Wscript.Sleep 6000  >> %temp%\login.vbs
for /l %%n in (1, 1 ,1) do echo IE.Document.All.Item("email").Value = "your_email"  >> %temp%\login.vbs
for /l %%n in (1, 1 ,1) do echo IE.Document.All.Item("password").Value = "your_password"  >> %temp%\login.vbs
for /l %%n in (1, 1 ,1) do echo WshShell.AppActivate "IE"  >> %temp%\login.vbs
for /l %%n in (1, 1 ,1) do echo WshShell.SendKeys "{ENTER}" >> %temp%\login.vbs
start %temp%\login.vbs
timeout 15 >nul

for /l %%n in (1, 1 ,1) do echo Set wshshell = wscript.CreateObject("WScript.Shell") >> scroll.vbs
for /l %%n in (1, 1 ,1) do echo wshshell.sendkeys "{PGDN}" >> scroll.vbs
:loop
start scroll.vbs
timeout 3 >nul
goto loop