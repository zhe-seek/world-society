$ErrorActionPreference = "Stop"
$noteSrc = "F:\deepseek harness\deepseek workspace\Live note"
$readerSrc = "F:\deepseek harness\deepseek workspace\Live Reader"
$noteDst = "D:\黑曜石文件夹 - 副本\.obsidian\plugins\Live note"
$readerDst = "D:\黑曜石文件夹 - 副本\.obsidian\plugins\Live Reader"
Copy-Item "$noteSrc\main.js" "$noteDst\main.js" -Force
Copy-Item "$noteSrc\styles.css" "$noteDst\styles.css" -Force
Copy-Item "$noteSrc\使用说明书.md" "$noteDst\使用说明书.md" -Force
Copy-Item "$readerSrc\main.js" "$readerDst\main.js" -Force
Copy-Item "$readerSrc\styles.css" "$readerDst\styles.css" -Force
Copy-Item "$readerSrc\使用说明.md" "$readerDst\使用说明.md" -Force
"OK $(Get-Date -Format o)" | Out-File -FilePath "F:\deepseek harness\deepseek workspace\install-no-admin.log" -Encoding utf8
Write-Host "安装完成。请完全退出 Obsidian 再重新打开。"
