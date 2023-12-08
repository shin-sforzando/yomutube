## How to

### Set API Key

```shell
firebase functions:secret:set YouTube_DATA_API_KEY
```

### Generate API Models from OpenAPI definitions

```shell
datamodel-codegen --debug --input ../api/YouTubeDataV3.yaml --output model.py
```

Other arguments are specified in `pyproject.toml`.

> [!NOTE]
> [datamodel-code-generator](https://docs.pydantic.dev/latest/integrations/datamodel_code_generator/) can't parse `format:` in the OpenAPI definition, the following warnings can be ignored with `--disable-warnings`.
>
> - `UserWarning: format of 'uint32' not understood for 'integer' - using default`
> - `warn(f'format of {format__!r} not understood for {type_!r} - using default' '')`

### Deploy

```shell
firebase deploy --only functions
```
