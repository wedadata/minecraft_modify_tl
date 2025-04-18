:init
@echo off
@powershell -Command "(Get-Content tlauncher-2.0.properties) -replace 'usrnamesetup', '%username%' | Set-Content tlauncher-2.0.properties"
@rd /s /q %appdata%\.tlauncher
@rd /s /q %temp%\minecraft_mod_dir
@mkdir %temp%\minecraft_mod_dir
@mkdir %appdata%\.tlauncher
@xcopy "%cd%\resources\*" "%temp%\minecraft_mod_dir" /y /e
@copy tlauncher-2.0.properties %appdata%\.tlauncher

:app
java -Xmx5G -Xms2G -jar tlauncher.jar
java -Xmx5G -Xms2G -jar tlauncher.jar
