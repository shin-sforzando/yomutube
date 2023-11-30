from firebase_admin import initialize_app
from firebase_functions import https_fn
from firebase_functions import options
from firebase_functions import scheduler_fn

app = initialize_app()
options.set_global_options(region=options.SupportedRegion.ASIA_NORTHEAST1)


@https_fn.on_request()
def on_request_example(req: https_fn.Request) -> https_fn.Response:
    return https_fn.Response("Hello world!")


@scheduler_fn.on_schedule(
    schedule="0 */12 * * *", timezone=scheduler_fn.Timezone("Asia/Tokyo")
)
def on_schedule_example(event: scheduler_fn.ScheduledEvent) -> None:
    print(f"{event.job_name=}")
    print(f"{event.schedule_time=}")


def main():
    from api.youtube_data_v3 import Configuration

    configuration = Configuration(host="https://www.googleapis.com/youtube/v3")
    print(f"{configuration=}")


if __name__ == "__main__":
    main()
