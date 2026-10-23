@echo off
chcp 65001 >nul
setlocal
set "SRC=%~dp0"
set "DST=D:\黑曜石文件夹 - 副本\.obsidian\plugins\Live note\"
echo 正在更新 Live note 插件...
echo 源：%SRC%
echo 目标：%DST%
if not exist "%DST%" (
  echo 目标目录不存在，请先在 Obsidian 中安装 Live note 插件。
  pause
  exit /b 1
)
xcopy "%SRC%*" "%DST%" /E /Y
if errorlevel 1 (
  echo.
  echo 复制失败。请右键此文件，选择“以管理员身份运行”。
) else (
  echo.
  echo 更新完成。请完全退出并重新打开 Obsidian。
)
pause
