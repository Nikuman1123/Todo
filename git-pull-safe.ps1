$Status = git status --porcelain
if ($Status -eq "") {
    Write-Host "作業ツリーはクリーンです。git pull を実行します。"
    git pull
} else {
    Write-Host "ローカルに未コミットの変更があります。git pull はスキップしました。"
}
