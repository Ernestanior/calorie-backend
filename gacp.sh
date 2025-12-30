#!/bin/zsh

# 一键 git add . && git commit -m "..." && git push
# 用法：
#   ./gacp.sh "commit message"
# 如果不传参数，会提示你输入提交信息。

if [ -z "$1" ]; then
  echo "请输入 commit message："
  read msg
else
  msg="$1"
fi

if [ -z "$msg" ]; then
  echo "commit message 不能为空，已退出。"
  exit 1
fi

echo "git add ."
git add . || exit 1

echo "git commit -m \"$msg\""
git commit -m "$msg" || exit 1

echo "git push"
git push || exit 1

echo "✅ 已完成：git add . && git commit && git push"
