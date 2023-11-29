# coding: utf-8
"""
    YouTube Data API v3

    See. [YouTube Data API v3](https://developers.google.com/youtube/v3)

    The version of the OpenAPI document: 1.0.0
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501
import unittest

from openapi_client.api.videos_api import VideosApi


class TestVideosApi(unittest.TestCase):
    """VideosApi unit test stubs"""

    def setUp(self) -> None:
        self.api = VideosApi()

    def tearDown(self) -> None:
        pass

    def test_video_categories_list(self) -> None:
        """Test case for video_categories_list

        Returns a list of categories that can be associated with YouTube videos.
        """
        pass

    def test_videos_list(self) -> None:
        """Test case for videos_list

        Returns a list of videos that match the API request parameters.
        """
        pass


if __name__ == "__main__":
    unittest.main()
