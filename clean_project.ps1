# プロジェクトのディレクトリに移動
cd "C:\Users\tellm\IdeaProjects\JavaStudy"

# target フォルダを削除（存在チェック付き）
if (Test-Path target) {
    Remove-Item -Recurse -Force target
    Write-Host "Target folder deleted."
} else {
    Write-Host "Target folder does not exist."
}

# logs フォルダを削除（存在チェック付き）
if (Test-Path logs) {
    Remove-Item -Recurse -Force logs
    Write-Host "Logs folder deleted."
} else {
    Write-Host "Logs folder does not exist."
}

# src 以下の Java ファイルを一覧表示
Write-Host ""
Write-Host "List of Java files in the project:"
Get-ChildItem -Path "src" -Recurse -Filter "*.java"

Write-Host ""
Write-Host "Cleanup completed successfully!"
