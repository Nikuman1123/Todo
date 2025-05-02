Write-Host "`n=== Git Pull チェック開始: $(Get-Date -Format "yyyy-MM-dd HH:mm:ss") ==="

$Status = git status --porcelain

if ($Status -eq "") {
    Write-Host "✔ 作業ツリーはクリーンです。git pull を実行します。"
    git pull
} else {
    Write-Host "⚠ ローカルに未コミットの変更があります。git pull はスキップされました。"
}

Write-Host "=== Git Pull チェック終了 ===`n"
