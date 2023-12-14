import json
from datetime import timedelta
from datetime import timezone


JST = timezone(timedelta(hours=9), "JST")
NO_CAPTION_MESSAGE = "【No captions were available.】"


def print_json_response(json_obj):
    print(json.dumps(json_obj, indent=2, ensure_ascii=False))
