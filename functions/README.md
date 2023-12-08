```shell
firebase functions:secret:set YouTube_DATA_API_KEY
```

```shell
datamodel-codegen --input ../api/YouTubeDataV3.yaml --input-file-type openapi --output model.py --output-model-type pydantic_v2.BaseModel
```

> [!NOTE]
> [datamodel-code-generator](https://docs.pydantic.dev/latest/integrations/datamodel_code_generator/) can't parse `format:` in the OpenAPI definition, the following warnings can be ignored.
>
> - `UserWarning: format of 'uint32' not understood for 'integer' - using default`
> - `warn(f'format of {format__!r} not understood for {type_!r} - using default' '')`
