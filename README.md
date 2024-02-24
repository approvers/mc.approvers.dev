# mc.approvers.dev

限界開発鯖で運用されている Minecraft サーバーを管理するリポジトリ.

> [!NOTE]
>
> 当リポジトリは [sksat/mc.yohane.su](https://github.com/sksat/mc.yohane.su) を参考にしています.
> この場を借りて, sksat さんに感謝を申し上げます.
>
> 参考: [万国のサーバ管理者よ， 自動化せよ！  - speakerdeck](https://speakerdeck.com/sksat/mo-guo-falsesabaguan-li-zhe-yo-zi-dong-hua-seyo?)

- [プレイヤー向けドキュメント]()

## 参加方法

`mc.approvers.dev` は限界開発鯖で運用されている Minecraft サーバーです.

**参加できるのは限界開発鯖メンバーのみです.**

> [!NOTE]
>
> 前身である `mc.m1sk9.dev` でプレイしていたプレイヤーはホワイトリストが移行されているので, そのまま引き続きプレイ可能です.

1. [data/whitelist.json](./data/whitelist.json) に自分の Minecraft ID, UUID を追加する. UUID は [ここ](https://mcuuid.net/) で取得できます.
2. プルリクエストを作成する
3. Done!

## 起動方法

### 初回起動

> [!IMPORTANT]
>
> `server.properties` で指定されている RCON パスワードは機密情報のため, セットアップ時に都度生成するようにしています. デフォルトでは環境変数の Key が指定されているため, そのままサーバーを起動するとエラーが発生します.
>
> `./setup.sh` を実行することで, RCON パスワードを生成します. 初回起動時は実行するようにしてください.

1. このリポジトリをクローンする

```sh
git clone https://github.com/approvers/mc.approvers.dev.git
```

2. セットアップスクリプトを実行し, RCON パスワードを生成する

```sh
./setup.sh
```

3. サーバーを起動する

```sh
docker compose up -d
# or
make up
```

### サーバーのバックアップを利用した起動

1. このリポジトリをクローンする

```sh
git clone https://github.com/approvers/mc.approvers.dev.git
```

2. セットアップスクリプトを実行し, RCON パスワードを生成する

```sh
./setup.sh
```

3. `data` ディレクトリに `world` , `world_nether` , `world_the_end` などのワールドデータを配置する

4. 起動する

```sh
docker compose up -d
# or
make up
```

## Makefile

```sh
# サーバーの起動
make up

# サーバーの停止
make down

# サーバーの再起動
make restart

# サーバーのホワイトリストを更新
git pull && make restart

# サーバーのログを表示
make logs

# サーバーのコンソールに接続
make exec
```
