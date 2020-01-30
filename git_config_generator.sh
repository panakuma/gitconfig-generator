#!/bin/bash
echo ".gitconfig 対話型生成スクリプト"
echo "いくつかの質問に答えると生成されるらしい？"
echo
echo -n "ユーザー名を入力してください : "
read username
echo -n "メールアドレスを入力してください : "
read email
echo -n "gitコマンドで呼ばれるテキストエディタを選んでください(ex. vim) : "
read editor
echo
echo "以下の内容で生成します"
echo "ユーザー名       : $username"
echo "メールアドレス   : $email"
echo "テキストエディタ : $editor"
ans=n
echo -n "よろしいですか？(y/N) : "
read ans

if [[ $ans = y ]] ; then
  git config --global user.name "$username"
  git config --global user.email "$email"
  git config --global core.editor "$editor"
  git config --global color.diff auto
  git config --global color.status auto
  git config --global color.branch auto
  git config --global core.quotepath false

  exit 0
fi


exit 1
