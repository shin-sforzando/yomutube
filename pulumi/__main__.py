"""A Google Cloud Python Pulumi program"""
import pulumi_gcp as gcp

import pulumi

defaultProject = gcp.firebase.Project(
    "default",
    project="yomutube-f5b5d",
    opts=pulumi.ResourceOptions(protect=True),
)

pulumiServiceAccount = gcp.serviceaccount.Account(
    "pulumi",
    account_id="pulumi",
    description="Service Account for Pulumi",
    display_name="pulumi",
    project="yomutube-f5b5d",
    opts=pulumi.ResourceOptions(protect=True),
)
