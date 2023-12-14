import json
from datetime import timedelta
from datetime import timezone


JST = timezone(timedelta(hours=9), "JST")

NO_CAPTION_MESSAGE = "【No captions were available.】"


def print_json(json_obj) -> None:
    """
    Prints a JSON object with indentation and non-ASCII characters support.

    Args:
        json_obj (dict): The JSON object to be printed.
    """
    print(json.dumps(json_obj, indent=2, ensure_ascii=False))
