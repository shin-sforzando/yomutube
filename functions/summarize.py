from typing import Literal
from typing import TypeAlias

from langchain.chains import LLMChain
from langchain.chains.summarize import load_summarize_chain
from langchain.docstore.document import Document
from langchain.text_splitter import RecursiveCharacterTextSplitter
from langchain_core.prompts import PromptTemplate
from langchain_google_vertexai import VertexAI
from utils import SUMMARIZE_PROMPT_TEMPLATE


ModelName: TypeAlias = Literal["gemini-pro", "text-bison"]


def get_summarized_text(
    text: str,
    chunk_size: int = 16384,
    model_name: ModelName = "gemini-pro",
    temperature: float = 0.2,
    max_output_tokens: int = 2048,
) -> str:
    """
    Summarizes the given text by extracting subtitles from YouTube videos.

    Args:
        text (str): The input text to be summarized.
        chunk_size (int, optional): The size of each text chunk for processing. Defaults to 16384.
        temperature (float, optional): The temperature parameter for text generation. Defaults to 0.25.
        max_output_tokens (int, optional): The maximum number of tokens in the generated summary. Defaults to 2048.

    Returns:
        str: The summarized text.
    """
    first_template = (
        SUMMARIZE_PROMPT_TEMPLATE
        + """
--------
{text}
--------
"""
    )
    first_prompt = PromptTemplate(input_variables=["text"], template=first_template)
    subsequent_template = (
        SUMMARIZE_PROMPT_TEMPLATE
        + """
--------
{existing_answer}
{text}
--------
"""
    )
    subsequent_prompt = PromptTemplate(
        input_variables=["existing_answer", "text"], template=subsequent_template
    )
    vertex_ai = VertexAI(
        location="asia-northeast1",
        model_name=model_name,
        temperature=temperature,
        max_output_tokens=max_output_tokens,
    )
    text_splitter = RecursiveCharacterTextSplitter(
        chunk_size=chunk_size, chunk_overlap=0
    )
    texts = text_splitter.split_text(text)
    print(
        f"{len(text)} chars divided into {len(texts)} chunks by {chunk_size} like: {texts[0][:128]} ..."
    )
    docs = [Document(page_content=text) for text in texts]
    chain = load_summarize_chain(
        vertex_ai,
        chain_type="refine",
        question_prompt=first_prompt,
        refine_prompt=subsequent_prompt,
        verbose=True,
    )
    result = chain.run(docs)
    return result


def get_keywords(
    text: str,
    existing_keywords: list[str] = [],
    model_name: ModelName = "gemini-pro",
    temperature: float = 0.0,
    max_output_tokens: int = 256,
) -> list[str]:
    """
    Extracts keywords from the given text and returns them in descending order of importance.

    Args:
        text (str): The input text from which keywords need to be extracted.
        existing_keywords (list[str], optional): A list of existing keywords to consider. Defaults to an empty list.
        temperature (float, optional): The temperature parameter for keyword extraction. Defaults to 0.0.
        max_output_tokens (int, optional): The maximum number of output tokens. Defaults to 256.

    Returns:
        list[str]: A list of extracted keywords in descending order of importance.
    """
    prompt_template = """以下の文章から、最大10個のキーワードを抽出し、 `|` で区切って重要度の高い順に出力してください。
--------
{text}
--------
"""
    prompt = PromptTemplate(input_variables=["text"], template=prompt_template)
    vertex_ai = VertexAI(
        location="asia-northeast1",
        model_name=model_name,
        temperature=temperature,
        max_output_tokens=max_output_tokens,
    )
    chain = LLMChain(llm=vertex_ai, prompt=prompt, verbose=True)
    result = chain({"text": text})["text"]
    result = [keyword.strip() for keyword in result.split("|")]
    print(f"Existing keywords: {existing_keywords}")
    print(f"Extracted keywords: {result}")
    result = list(
        set([keyword for keyword in result if keyword != ""] + existing_keywords)
    )
    print(f"Keywords: {result}")
    return result


if __name__ == "__main__":
    text = """本当に沢山の技術がありますけども 日本人にとって恐らく
一番 日本社会に影響したっていうのは この時間どおりに
物を動かす技術じゃないかと思うんですね 例えば新幹線 1 日に それこそ
ものすごい数の新幹線が 東京から大阪 あるいは博多 あるいは北は東北まで
走ってますけども ほとんど 1 分と狂わずに
スケジュールどおりに新幹線が動く あるいはトヨタの工場で 何秒に 1 台というタイミングで
自動車が生産される こう物事が時間どおりに動くっていう技術が この日本人に 生活をこう時間どおりに
きちんきちんと動かす あるいは こう自分が失敗すると 周りの人に影響が及ぶ
だから自分の役割をしっかり果たしていこう そういう日本社会を作る基礎になったのが
物事を時間どおりに動かしていく 技術っていうこと なんではないかなと
それがたぶん日本社会に一番 こう 一番底の部分で影響を及ぼしたって
いうことじゃないかなと今 ふと思いました インターネットも
そういう この日本社会の中で もちろん情報をしっかりシェアしていくっていう役割を
果たしているんだと思いますし それこそ インターネットの世界は 情報がぶつからないように 本当に短い時間で
色んなものをインターネットの中に発信していく 時間がどんどん短くなる中で 情報がシェアされていく
日本人に合った技術ではないかなと思ってます 私がアメリカの大学にいた頃は タイプライターの時代でした だからタイプライターのブラインドタッチを
一生懸命勉強して アメリカの大学で
ペーパーを書いていましたけども あの時に 今の世の中がこんな風になっているなんていうのは
想像もできませんでした 図書館に行って
自分が調べたい本が何階のどこの棚にあるか というのを一生懸命 先に調べて
その本を借りて 物事を調べてペーパーを書いていた時代が 今 色んなものがネットで調べられる
短時間で調べられる 物事を短時間で調べられますから
調べる量が すごく莫大に増えて この莫大に増えた情報の中から 的確に自分が必要とするものを
選び出していかなきゃいけないっていうのは 結構 今の大学生
大変なんだろうなと思ったりもします YouTube の中で 世界的な最近のトレンドというのは
どういうことになっているんでしょうか？ このコロナ禍で
教育だったり あるいは料理だったり 本当に色んなものに接する機会が増えました その他にアーティストが
ライブのパフォーマンスができなくなった分 この YouTube で色んなパフォーマンスを
出してくるということが本当に増えたなと思ってます エンターテインメント業界の構造が このコロナ禍と YouTube で実は世界中に
自分のパフォーマンスを見てもらえるっていうことになって これからのエンターテインメントの在り方というのも
変わってくるんじゃないのかなと思ってます ただ単にパフォーマンスを出していくだけでなくて それが色んなアーティストの収入になって 色んな芸術が発信される
今まで気づかなかったようなことが 発信されていくように なるんじゃないかなと
期待をしてます 私も YouTube のおかげで
今まで聞いたことがないような グルジア料理を食べて
すごく おいしいということに気がつきました 人々の生活が
少しずつ豊かになってる気がします とても楽しい体験でした 日本でよく言われるのが 「変化をもたらすのは若者と馬鹿者とよそ者」だと
よく日本では言います 今までのやり方に
とらわれない若い人のアイデア それから今までの常識からすると とんでもない
とんでもなく間違ってると思われても それをやり遂げる スティーブ・ジョブズみたいな人 それから全く違う世界から飛び込んできて 「今まで常識はこうだ」というものを知らずに
新しいことを始める人 そういう新しい人たちが世の中の変化を 作り出す原動力になっているというのを
最近つくづく感じます 「今までのやり方はこうだった」と
いうのではなくて もう技術がこれだけ変わって
新しいやり方がどんどん来てるわけですから 本当に日本の国の中でも「若者 馬鹿者 よそ者」と
言われている人たちの新しいアイデアが どんどん採用されるような
世の中にしなければいけないと思ってます 私がワクチンの担当大臣になって それまで日本は 1 億人に
ワクチンを 2 回打つというオペレーションを 紙で管理しようとしてたんです だけど それを紙で管理するのは
とても無理だと思って ワクチンを ちゃんと誰が打ったか
記録するシステムを立ち上げよう それを 2 ヶ月で作ってくれたのは 創業して 7 年目のスタートアップでした それまでの日本の感覚では
政府がやる これだけの事業をお任せをするのは もう 名の知れた大企業に任せる というのが これまでの日本政府の
やり方だったかもしれませんけども 色んな人 色んな企業と話をして 「恐らくこれが出来るのは この会社しかない」
そう思って 本当に新しい小さいスタートアップに
このシステムを 開発をお願いをしました 当初は「そんなこと出来るわけがない」という声が
非常に多かったんですけども 無事に そのシステムが立ち上がって
今 日本の毎日の ワクチン接種の記録の管理は
このシステムでやれてます やっぱり技術の進歩をしっかり取り入れて 昨日までの常識が 今日は非常識になってる 昨日までの非常識が
今日は常識になってるっていうことを 我々がもっと謙虚に受け入れていく必要が
あるんだろうと思ってます もう 1 つ日本で
これからやらなければいけないのは もっともっと日本によそ者 外国の人に
日本社会に入ってきてもらわなければいけないと思ってます 日本の企業を見ると
だいたい日本の企業のトップは 日本人で 男性で 55 歳以上で 多くの場合 大学を卒業してその会社に入って
ずっとその会社の中で偉くなって トップになったという人が
非常に多いんですけども もっともっと違う人間を日本の企業に入れて 違う考え方 違うアイデアというのを
出していかないと いけないんだと思います 特に このデジタルの時代は
変化がものすごく激しいですから 色んな人を色んな所から招くことができる社会というのが
強くなるんだと思います そういう意味で このコロナが終わったら
日本社会をもっともっと開いていかなきゃいけないと思ってますし 逆に こうやってオンラインで
普通に話ができるということをみんなが分かりました テレワークで仕事ができるということを
みんなが分かりましたんで 日本の企業に 外国の人にどんどん参加をしてもらうというのは
今まで以上に簡単になったんだと思います そういうことを もっともっと
進めていく必要があるなと感じてます これからも どうぞよろしくお願いします 一緒にコロナをやっつけるために
戦っていきましょう"""  # 【後編】河野太郎大臣 x YouTube CEO スーザン・ウォジスキ対談動画 @ YouTube Japan 公式チャンネル

    print("text-bison Version")
    print(summarized_by_bison := get_summarized_text(text, model_name="text-bison"))
    print(get_keywords(summarized_by_bison, model_name="text-bison"))

    print("gemini-pro Version")
    print(summarized_by_gemini := get_summarized_text(text, model_name="gemini-pro"))
    print(get_keywords(summarized_by_gemini, model_name="gemini-pro"))
