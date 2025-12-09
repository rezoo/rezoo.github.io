---
layout: post
title: "視覚系の壁"
date: 2025-12-10 00:00:00 +0900
tags: [tech, advent calendar]
dialogue_intro:
  - speaker: commentator
    text: >
      こんにちは、解説役のれぞらぼ太郎です。
  - speaker: listener
    text: >
      聞き手役のLLM太郎です。
  - speaker: commentator
    text: >
      壁アドベントカレンダーも10周年ということで、まずはおめでとうございます！自分が定年退職するくらいまでは続けてほしいですね！
  - speaker: listener
    text: >
      うーん・・・
  - speaker: commentator
    text: >
      はい？
  - speaker: listener
    text: >
      まず、内輪ネタすぎてわからないんですけど、壁アドベントカレンダーってなんですか？
  - speaker: commentator
    text: >
      ぶっちゃけ自分もよくわかってないのね、これがなんなのか・・・
  - speaker: commentator
    text: >
      ただ記録を辿ると、元々は[ボルダリング関係のネタを集める予定](https://kyabatalian.hatenablog.com/entry/2015/12/01/004404)だったらしいのね。そんで当時のD進勢を集めてボルダリングの記事集めよう的な
  - speaker: listener
    text: >
      ほう
  - speaker: commentator
    text: >
      初日は良かったんだけど、[途中から全部ぶち壊した人](https://lite.evernote.com/note/6d59c90c-3c2e-4942-9cb3-44cd46eaa3f9)がいて、それから適当なことをなんでも書いてよくなったアドベントカレンダーになったと理解しています
  - speaker: listener
    text: >
      それがちょうど10年前となると、そこからだいぶ機械学習界隈の様子は様変わりしてきたんじゃないですか？
  - speaker: commentator
    text: >
      そうそう、一番大きい変化はLLM太郎の台頭ですよね。当時はhypeを避ける目的で、AIとは呼ばず機械学習もしくは深層学習と明示的に呼称するのが正しいという流れだったけど、LLM以降はもうみんな気にせずAIと言っとりますよね
  - speaker: commentator
    text: >
      コーディングも様変わりして、Jekyllで対談形式のブログ書きたいと指定するとドラフト書いてくれるし、便利な時代になったもんです
  - image: /assets/img/codex.jpg
    caption: >
      codexしか勝たん
dialogue_about:
  - speaker: listener
    text: >
      前回のアドベントカレンダーの記事を眺めてたんですが、前は[生成AI界隈の謎テクニック](https://www.youtube.com/watch?v=RBffEJ85_3U)とかいう題でYouTube動画作ってましたね
  - speaker: commentator
    text: >
      そう、そんでakbさんと対談して、そのときに進化的モデルマージの原型ともよばれる複数のテクニックについて話されてたんやけど
  - speaker: commentator
    text: >
      まさか対談の後[ちゃんとした形に発展](https://sakana.ai/evolutionary-model-merge-jp/)させて論文あげるとは思ってなかったですね。これはもう壁アドベントカレンダーの功績の一つと言っても、過言でわない・・・
  - speaker: listener
    text: >
      くさ
  - speaker: listener
    text: >
      それはさておき、前回のアドベントカレンダーから2年間の間になにか進展はありましたか？
  - speaker: commentator
    text: >
      退職もありますけど、ライフイベントの一番の変化は子供が生まれたことですよね。結婚は生活スタイルがあまり変わらなかったけど、出産はむちゃくちゃ変わる。そんでそこからてんてこまいの日々を過ごしとるわけですが、一番大変だったのは子供がNICUにいたときなんよ
  - speaker: listener
    text: >
      NICUというのは、小児集中治療室の略ですが、そこに出生後お子さんがしばらく過ごしていたということですか？
  - speaker: commentator
    text: >
      そういうことです。NICUにいる赤ちゃんで大変じゃない赤ちゃんはいないのよ
  - speaker: commentator
    text: >
      出産後いきなり小児科医の先生が現れて、大変な状態ですが最善を尽くしますーとか現状を説明されて、あらゆるリスクについて語られて、膨大な量の書類にサインしつつ、これは大変なことになった、どうなるんだ、妻は、赤ちゃんは、覚悟、覚悟だけは決めなくては・・・みたいに思いながら日々を過ごしたわけです
  - speaker: listener
    text: >
      ほう・・・（ノーコメント）
  - speaker: commentator
    text: >
      その顛末はここでは控えますが、まあとにかくその過程の中で経験しながら調べてみて、そこで胎児と赤ちゃんの目の成長過程についてはじめて知ったの
  - speaker: listener
    text: >
      え
  - speaker: listener
    text: >
      **ニューラルネット**を使った**コンピュータビジョン**の研究者なのに知らなかった？？
  - speaker: commentator
    text: >
      うるさいですね・・・
  - speaker: commentator
    text: >
      とにかく、胎児や赤ちゃんの目の成長過程とか、どういった目の疾患になりやすいかとか、どのような撮像機器で診断しているかとかの話は、コンピュータビジョンの研究者だとそれなりに興味持てると思うので、今回はその話になります
  - speaker: commentator
    text: >
      一応補足ですが、今回の話は自分の専門外の話ですので、一応信憑性は引用元を確認しながら慎重に書いていますが、当然ながら誤りがあるかもしれません。できるだけ間違いを起こさずに現状を俯瞰できる記事にするよう努力はしていますが、ある場合は指摘いただけるとありがたいです
dialogue_roc:
  - speaker: commentator
    text: >
      まず一般論として、NICUにいる赤ちゃん、低出生体重児は他の正期産児と比べて重篤な疾患や障害をもつリスクが高くなります
  - speaker: commentator
    text: >
      その中でも特に起こりやすい疾患の一つが目の病気です
  - speaker: listener
    text: >
      なんでなんですかね？
  - speaker: commentator
    text: >
      まずは目の構造から簡単におさらいしていきますか。解説よろしゅう
  - image: /assets/img/eye.gif
    caption: >
      「[MSDマニュアル（家庭版）眼の構造と機能](https://www.msdmanuals.com/ja-jp/home/20-%E7%9C%BC%E3%81%AE%E7%97%85%E6%B0%97/%E7%9C%BC%E3%81%AE%E7%94%9F%E7%89%A9%E5%AD%A6/%E7%9C%BC%E3%81%AE%E6%A7%8B%E9%80%A0%E3%81%A8%E6%A9%9F%E8%83%BD)」より引用
  - speaker: listener
    text: >
      はい。眼球の角膜に入射された光は、虹彩、水晶体などの器官を通して、最終的にカメラでいうイメージセンサーの役割をもつ網膜へ送られます。網膜は光を感じる細胞（視細胞）がぎっしり詰まっており、視細胞は光を電気信号に変換し、脳へ伝達します。視細胞には桿体と錐体があり、暗所では桿体が、明所では錐体が「明るさ」と「色」の両方を担当します。
  - speaker: commentator
    text: >
      複雑な構造やね。そんで、網膜には視細胞のほかに、その視細胞に栄養を与えるための毛細血管も詰まっている。その血管の完成が他の器官に比べて遅いんよね
  - speaker: listener
    text: >
      そこ不思議ですよね、目って生きていく上で重要なセンサーなのに成長が遅いなんて
  - speaker: commentator
    text: >
      そうなんだけど、肺や心臓と比べてしまうと、胎児のうちからフル稼働する必要は特にない器官でもあります。胎内でくっきり見えるようになってもしゃーないところあるし・・・
  - speaker: commentator
    text: >
      説明してもらった通り、目というのはむちゃくちゃ複雑で繊細なセンサーだから、それを胎内で急に作るのは難しいところもあります。なので、生存戦略としてまずは目の中心部から血管を作り始め、時間をかけて周辺部へ伸ばしていく戦略をとっている
  - speaker: commentator
    text: >
      なんだけど、早産児の場合は血管がまだ伸びきっていない段階で外界に出てしまうんよね
  - speaker: listener
    text: >
      なので視覚関係の疾患が起こりやすいと
  - speaker: commentator
    text: >
      はいです。特に起こりやすい疾患は[未熟児網膜症(ROP)](https://www.msdmanuals.com/ja-jp/home/23-%E5%B0%8F%E5%85%90%E3%81%AE%E5%81%A5%E5%BA%B7%E4%B8%8A%E3%81%AE%E5%95%8F%E9%A1%8C/%E5%B0%8F%E5%85%90%E3%81%AB%E3%81%8A%E3%81%91%E3%82%8B%E7%9C%BC%E7%96%BE%E6%82%A3/%E6%9C%AA%E7%86%9F%E5%85%90%E7%B6%B2%E8%86%9C%E7%97%87-rop)と呼ばれていて、詳細は省くけど、網膜の毛細血管が異常に増殖して、最悪の場合は失明を引き起こす厄介な病気です。この発症率を抑制するためには保育器の酸素濃度をむちゃくちゃ厳密に管理する必要がある
  - speaker: listener
    text: >
      今回はその話なわけですね
  - speaker: commentator
    text: >
      はい、未熟児網膜症の歴史は小児科医療の発展と深く結びついとります。そのためには保育器の話をしなければならないので、まずはそこから話しますか
  - speaker: listener
    text: >
      はい
  - image: /assets/img/baby_hoikuki.png
    caption: 保育器のイラスト
  - speaker: commentator
    text: >
      まず、[保育器](https://www.nicu.jp/about/)という画期的な発明があります。子宮内の安定した環境を再現することで、未熟児の生存率は劇的に向上しました
  - speaker: commentator
    text: >
      でもその当時の病院では優生思想や倫理的な抵抗感があったりとかで、そんなに導入が進まなかったらしいんですね
  - speaker: listener
    text: >
      なるほど
  - speaker: commentator
    text: >
      そんな背景の中、[Martin Couneyという自称医師](https://www.history.com/articles/baby-incubators-boardwalk-sideshows-medical-marvels)がですね、資金と注目を集めるために、未熟児を入れた複数台の保育器を見世物として万博や遊園地に展示します
  - speaker: listener
    text: >
      **ええ・・・・・・（困惑）**
  - speaker: commentator
    text: >
      いやまあ、ドン引きなんだけど、観客から取った入場料で運営費を賄って、親からは費用を取らない方針をとったこと。また手段はどうであれ結果的に6,500名以上の赤ちゃんが助かったこと。またそれがきっかけで保育器の病院への導入が進んだことが評価されています
  - speaker: listener
    text: >
      うーん、なるほど・・・うーん、でも、うーん、しかし・・・
  - speaker: commentator
    text: >
      [まじで彼は調べてもよく分からなかった](https://neonatology.net/gallery/people/martin-arthur-couney-1869-1950/)のよね、自称医者だし・・・
  - speaker: commentator
    text: >
      とにかく、こうした努力もあって次第に保育器が病院の設備として普及し始めたことで、低体重の赤ちゃんを救えるようになったのですが、それと同時に未熟児網膜症によって失明する赤ちゃんが多発しました。
  - speaker: listener
    text: >
      救えるようになったからこそ、新しい医学的課題がでてきたと
  - speaker: commentator
    text: >
      そうですね。なぜ未熟児網膜症が起こるのか？様々な説が提案される中で模索していくと、保育器内の酸素濃度を高くしすぎたのが原因っぽいということがわかります
  - speaker: listener
    text: >
      なるほど
  - speaker: commentator
    text: >
      その当時は酸欠を防ぐ目的で酸素濃度を高くしていたんですね。その反省を活かし今度は酸素濃度を低くしたが、その場合は生存率が低下し脳性麻痺などの重い障害をもつ赤ちゃんの割合が高くなりました
  - speaker: commentator
    text: >
      多くの犠牲と試行錯誤の末に、最終的に酸素濃度は高すぎても低すぎてもだめで、非常に繊細な管理をしなければならないというコンセンサスに落ち着いています
  - speaker: listener
    text: >
      ただ繊細に管理したとしてもリスクが減るだけで、完全に予防することはできないわけですよね
  - speaker: commentator
    text: >
      そのとおりで、繊細な酸素濃度管理が要求される一方で、それに加えて小児眼科医という専門家が定期的に網膜の毛細血管が異常に成長していないか確認してきます。そしてその兆候があれば早期に発見し、場合によっては介入していく
  - speaker: commentator
    text: >
      ・・・けど、その診断が特殊技能を必要としていて大変なんですよね
  - speaker: listener
    text: >
      というのは？
  - speaker: commentator
    text: >
      まず、瞳孔を開く点眼薬を差します。別にこれは怖くない普通のやつです
  - speaker: commentator
    text: >
      次にですね、暴れる赤ちゃんを拘束して、開瞼器という器具を使って強制的にまぶたを開かせます
  - speaker: commentator
    text: >
      次に、金属の棒を、まぶたと眼球の隙間に滑り込ませて、眼球をグイグイと圧迫して、隠れた網膜の周辺部を覗き込みます
  - speaker: commentator
    text: >
      それを退院するまで定期的に行います
  - speaker: listener
    text: >
      **ええ・・・・・・(怖)**
  - speaker: commentator
    text: >
      いや、そりゃ泣くよって思ったもん。大人でも嫌だよこれは
  - speaker: commentator
    text: >
      痛くはないらしいんですけどね。ただ直視できなかったな自分は、怖くて・・・
  - speaker: listener
    text: >
      これってなんか違う方法で検査することってできないんですか？
  - speaker: commentator
    text: >
      それが、実はあるっぽいんですね。薬機法の関係で商品名出していいか分からんかったので載せないですけど、調べればでてきます
  - speaker: listener
    text: >
      ぽいというのは？
  - speaker: commentator
    text: >
      自分とこの大学病院は無かったのよね。これ使うと眼底検査の画像をデジタルデータの形で撮像できると
  - speaker: listener
    text: >
      じゃあそれ使えば侵襲性の問題は解決する？
  - speaker: commentator
    text: >
      どうやらそういうわけでもないっぽいんですよね。普通のカメラとは違って、その装置はカメラを直接眼球に押し当てて十数秒間待機するっぽい
  - speaker: listener
    text: >
      **ええ・・・・・・(怖)**
  - speaker: commentator
    text: >
      遠隔診療が可能となったりデジタルデータの形で残る利点は確実にあるんですけど、眼球に押し当てる手前繊細なスキルが別途必要になるし、[赤ちゃんにとってはこの手法もまあまあストレスがかかるという報告](https://kaken.nii.ac.jp/ja/grant/KAKENHI-PROJECT-25463519/)もあるし
  - speaker: commentator
    text: >
      価格もエグいので、すぐに導入すべき！とは言えない感じもありますね
  - speaker: listener
    text: >
      将来的には非侵襲でできるようになるといいんですけどね
  - speaker: commentator
    text: >
      まあそうなんやけど、自分はビジョンの研究者ということになっているので、他人事で片付けるのもなんか負けっぽい感じもするし、悔しいとこですね
  - speaker: commentator
    text: >
      あともう一つの重要な問題は、この未熟児網膜症の診断を行う小児眼科医の数が非常に少ないということなんよね
  - speaker: listener
    text: >
      なるほど、それって具体的にどれくらい少ないんですか？
  - image: /assets/img/japo.jpg
  - speaker: commentator
    text: >
      これは一例なんですけど、[日本小児眼科学会](http://www.japo-web.jp/)に登録されている小児眼科医の医師をチェックしてみます
  - speaker: listener
    text: >
      **え！？？**
  - speaker: listener
    text: >
      **神奈川県で2名しかいない！？？？**
  - speaker: commentator
    text: >
      そうなんですよ、首都圏だと実際は都内の医師が派遣されたりするんでしょうけど、神奈川県レベルの人口でこれですよ。北海道はあの広い土地で1名、石川県は0名。ちょっとびっくりしちゃいました
  - speaker: listener
    text: >
      0名の県が結構あるように見えますが大丈夫なんでしょうか？
  - speaker: commentator
    text: >
      わからない・・・ほかに小児眼科医がいるけど登録されていないだけなのか、遠隔診療なのか、それとも他県の大学病院へ転院するのか。皆目見当つかないが、まずいことだけはわかる・・・
  - speaker: commentator
    text: >
      小児眼科医って未熟児網膜症だけでなく子どもの目の疾患全般を受け持つスペシャリストじゃないですか。その医師が各都道府県に1名いるかいないかというのは、ゆゆしき問題であるように思えます
dialogue_end:
  - speaker: commentator
    text: >
      ・・・という感じでしたが、最終的には退院できたので、まずは一安心です
  - speaker: listener
    text: >
      それはよかったですね
  - speaker: commentator
    text: >
      あとはね、元気で幸せに生きてくれればね、それでいいです、はい
  - speaker: listener
    text: >
      今年ももう終わりそうですが、来年の目標は？
  - speaker: commentator
    text: >
      ハーフマラソンと、フルマラソン完走・・・・・・
  - speaker: listener
    text: >
      将来の目標は？
  - speaker: commentator
    text: >
      社論簡・・・・・・
  - speaker: listener
    text: >
      くさ
---

この記事は[壁アドベントカレンダー2025](https://adventar.org/calendars/11629)の記事となります。

{% include chat_board.html dialogue=page.dialogue_intro %}

## この記事について

{% include chat_board.html dialogue=page.dialogue_about %}

## 未熟児網膜症 (ROP: Retinopathy of prematurity)

{% include chat_board.html dialogue=page.dialogue_roc %}

> ##### まとめ
>
> - 網膜の毛細血管の形成は他の器官と比べて遅いため、未熟児網膜症という疾患にかかりやすい
> - 検査方法には侵襲性の問題がある。検査機器はあるものの侵襲性の問題は解決されていない
> - そうした小児の目の医療を担う医師の数もたいへん不足している
{: .block-tip }

## 終わりに

{% include chat_board.html dialogue=page.dialogue_end %}

えっじゃあ何すか？？？研究者はただ論文書いてるだけではダメだけど、でも論文は書けないといけないってことすか？？？？？ﾄｯﾌﾟｶﾝﾌｧ出した通っただけでキャッキャしてたあの頃は戻ってこないってとすか？？？？？？？そうでーーーーす！！！それはもっと若い世代がやるべきことなので！！！！！！！！！
