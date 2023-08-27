"""A Google Cloud Python Pulumi program"""
import pulumi_gcp as gcp

import pulumi

default_firebase_project = gcp.firebase.Project(
    "default",
    project="yomutube-f5b5d",
    opts=pulumi.ResourceOptions(protect=True),
)

pulumi_service_account = gcp.serviceaccount.Account(
    "pulumi",
    account_id="pulumi",
    description="Service Account for Pulumi",
    display_name="pulumi",
    project="yomutube-f5b5d",
    opts=pulumi.ResourceOptions(protect=True),
)

default_web_app = gcp.firebase.WebApp(
    "default",
    display_name="yomutube (web)",
    project="yomutube-f5b5d",
    opts=pulumi.ResourceOptions(protect=True),
)
