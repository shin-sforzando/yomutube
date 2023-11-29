# coding: utf-8
"""
    YouTube Data API v3

    See. [YouTube Data API v3](https://developers.google.com/youtube/v3)

    The version of the OpenAPI document: 1.0.0
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501
import datetime
import unittest

from openapi_client.models.topic_details import TopicDetails


class TestTopicDetails(unittest.TestCase):
    """TopicDetails unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> TopicDetails:
        """Test TopicDetails
        include_option is a boolean, when False only required
        params are included, when True both required and
        optional params are included"""
        # uncomment below to create an instance of `TopicDetails`
        """
        model = TopicDetails()
        if include_optional:
            return TopicDetails(
                topic_ids = [
                    ''
                    ],
                relevant_topic_ids = [
                    ''
                    ],
                topic_categories = [
                    ''
                    ]
            )
        else:
            return TopicDetails(
        )
        """

    def testTopicDetails(self):
        """Test TopicDetails"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == "__main__":
    unittest.main()
