# mc.approvers.dev

限界開発鯖で運用されている Minecraft サーバーを管理するリポジトリ.

> [!NOTE]
>
> 当リポジトリは [sksat/mc.yohane.su](https://github.com/sksat/mc.yohane.su) を参考にしています.
> この場を借りてお礼を申し上げます.
>
> 参考: [万国のサーバ管理者よ， 自動化せよ！  - speakerdeck](https://speakerdeck.com/sksat/mo-guo-falsesabaguan-li-zhe-yo-zi-dong-hua-seyo?)

- [プレイヤー向けドキュメント]()

## 参加方法

`mc.approvers.dev` は限界開発鯖で運用されている Minecraft サーバーです.

**参加できるのは限界開発鯖メンバーのみです.**

> [!NOTE]
>
> 前身である `mc.m1sk9.dev` でプレイしていたプレイヤーはホワイトリストが移行されているので, そのまま引き続きプレイ可能です.

1. [whitelist.json](./whitelist.json) に自分の Minecraft ID, UUID を追加する. UUID は [ここ](https://mcuuid.net/) で取得できます.

```json
[
  {
    "name": "<Minecraft ID>",
    "uuid": "<Minecraft UUID>"
  }
]
```

1. プルリクエストを作成する
2. Done!
