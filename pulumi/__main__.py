"""Infrastructure of YomuTube by Pulumi Python"""
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
    display_name="YomuTube (Web)",
    project="yomutube-f5b5d",
    opts=pulumi.ResourceOptions(protect=True),
)

default_hosting_site = gcp.firebase.HostingSite(
    "default",
    app_id="1:1009724725603:web:d84e66affa6ff5abef1b56",
    project="yomutube-f5b5d",
    site_id="yomutube-f5b5d",
    opts=pulumi.ResourceOptions(protect=True),
)

default_firestore_database = gcp.firestore.Database(
    "default",
    app_engine_integration_mode="DISABLED",
    concurrency_mode="PESSIMISTIC",
    location_id="asia-northeast1",
    name="(default)",
    project="yomutube-f5b5d",
    type="FIRESTORE_NATIVE",
    opts=pulumi.ResourceOptions(protect=True),
)
