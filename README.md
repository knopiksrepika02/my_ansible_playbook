my Ansible PlayBook
==================================
my Ansible PlayBook.

VPSのオーケストレーション用オレオレAnsible PlayBookです。
手元のLinux機が亡くなった等の諸事情で単一のシェルスクリプトにまとめています。
(Cygwinでもできるそうですが...)

ブラウザでVPSの管理コンソールにアクセスしてこのスクリプトを流し込めばLinux機を用意しなくてもオーケストレーション出来ちゃいます。

Ubuntu 14.10を想定。

やってること

- 必要なファイルの生成(内容はスクリプト内にヒアドキュメントで記述)
    - PlayBook
    - Ansible GalaxyからinstallするRoleリスト
    - Hostリスト
- Ansibleのinstall
- Roleのinstall
- オーケストレーション実行（LocalHostに対し実行すること前提）

### TODO 

- ローカライズ
- Docker Nginx Proxy
- 各種設定ファイルコピー
    - vimrc
    - bashrc


