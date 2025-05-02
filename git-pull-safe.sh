#!/bin/bash

cd "$(dirname "$0")"
if git diff-index --quiet HEAD --; then
  echo "作業ツリーはクリーンです。git pull を実行します。"
  git pull
else
  echo "ローカルに未コミットの変更があります。git pull はスキップしました。"
fi
