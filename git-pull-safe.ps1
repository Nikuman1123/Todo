Write-Host "`n=== Git Pull チェック開始: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss") ==="

$Status = git status --porcelain | ForEach-Object { $_.Trim() }

Write-Host "`n--- git status 出力確認 ---"
$Status | ForEach-Object { Write-Host "`t$_" }
Write-Host "--- 出力確認ここまで ---`n"

if (-not $Status -or $Status.Count -eq 0) {
    Write-Host "✔ 作業ツリーはクリーンです。git pull を実行します。"
    git pull
} else {
    Write-Host "⚠ ローカルに未コミットの変更があります。git pull はスキップされました。"
}


Write-Host "=== Git Pull チェック終了 ===`n"
