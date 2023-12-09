"""Infrastructure of YomuTube by Pulumi Python"""
import pulumi_gcp as gcp

import pulumi

PROJECT_ID = "yomutube-f5b5d"

default_firebase_project = gcp.firebase.Project(
    "default",
    project=PROJECT_ID,
    opts=pulumi.ResourceOptions(protect=True),
)

pulumi_service_account = gcp.serviceaccount.Account(
    "pulumi",
    account_id="pulumi",
    description="Service Account for Pulumi",
    display_name="pulumi",
    project=PROJECT_ID,
    opts=pulumi.ResourceOptions(protect=True),
)

default_workload_identity_pool = gcp.iam.WorkloadIdentityPool(
    "default",
    workload_identity_pool_id="default",
    description="Default Workload Identity Pool",
    display_name="Default Workload Identity Pool",
    project=PROJECT_ID,
    opts=pulumi.ResourceOptions(protect=True),
)

default_web_app = gcp.firebase.WebApp(
    "default",
    display_name="YomuTube (Web)",
    project=PROJECT_ID,
    opts=pulumi.ResourceOptions(protect=True),
)

default_hosting_site = gcp.firebase.HostingSite(
    "default",
    app_id="1:1009724725603:web:d84e66affa6ff5abef1b56",
    project=PROJECT_ID,
    site_id=PROJECT_ID,
    opts=pulumi.ResourceOptions(protect=True),
)

default_firestore_database = gcp.firestore.Database(
    "default",
    app_engine_integration_mode="DISABLED",
    concurrency_mode="PESSIMISTIC",
    location_id="asia-northeast1",
    name="(default)",
    project=PROJECT_ID,
    type="FIRESTORE_NATIVE",
    opts=pulumi.ResourceOptions(protect=True),
)
