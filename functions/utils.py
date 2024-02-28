import json
from datetime import timedelta
from datetime import timezone


JST = timezone(timedelta(hours=9), "JST")

NO_CAPTION_MESSAGE = "【Video information could not be retrieved.】"

SUMMARIZE_PROMPT_TEMPLATE = """あなたは情報収集のスペシャリストです。
以下の文章はYouTubeの動画から抜き出した音声字幕です。
字幕は句読点が欠落しており、表記揺れもあります。
動画を見てない人に説明するために、動画の内容を800文字程度に要約し、結果だけ出力してください。
結果はMarkdown形式で記述してください。"""


def print_json(json_obj) -> None:
    """
    Prints a JSON object with indentation and non-ASCII characters support.

    Args:
        json_obj (dict): The JSON object to be printed.
    """
    print(json.dumps(json_obj, indent=2, ensure_ascii=False))
