# Changelog

All notable changes to this project will be documented in this file.

## [0.0.2] - 2023-12-10

### Bug Fixes

- 2023-09-25 :bug: GitHub Actions ([ebd20ce](ebd20cebb53fe73eb5ee5aa13fb5eb410fb8e5c1)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-09-26 :bug: add FIREBASE_CLI_EXPERIMENTS: webframeworks to CI ([691d9fd](691d9fd91654acf9356745ecc20d24c842d7ae11)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-09-26 :bug: add channelId: prebiew to PR CI ([dc24286](dc242863b8b1188f351ff24e0b1f799e14a45adc)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-09-27 :bug: add GOOGLE_CREDENTIALS to Pulumi step on CI ([c3d354b](c3d354badece86aa0b13abdb5d9d12e5ce366a98)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-10-11 :bug: delete lecture codes ([112230e](112230e819d71a83165ec0c51fdf8b2ef3fe484e)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-12-10 :bug: env keys to use google cloud secret manager ([cc5a62a](cc5a62a223580988655fa29608ff187f57a2d31e)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-12-10 :bug: add exception handling for FirebaseError ([c8767a4](c8767a478c187afb9231b175409851a3482c85ce)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)

### Features

- 2023-08-26 :+1: kick off! ([15bcd70](15bcd704e64f0df0948717a946b59c8ac4ccaa01)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-08-26 :+1: introduce git-secret ([8673a10](8673a107798a97c793f93cd809ff53f5272f486d)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-08-27 :+1: introduce pre-commit ([8013850](801385094e80e5d807584315cd0ed9679f117b2e)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-08-27 :+1: remove unnecessary devices ([2d92bf7](2d92bf716bbc55e50aae037303473ec85f70659e)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-08-27 :+1: introduce FlutterFire ([33f68ee](33f68ee517ef7dd6c93864327e7f7298c16b47ae)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-08-27 :+1: import WebApp from Firebase ([c08e01a](c08e01a94c1df71d7a2c56cfcbf944c1124c1723)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-08-27 :+1: split Makefile ([29da837](29da8376742311bb37d387e2e5f297c0769b8527)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-08-28 :+1: add lcov to generate html test report ([bf84d85](bf84d85cfe3be62033a49965009ff2b07fd6a349)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-08-28 :+1: add test target on pulumi/Makefile ([06bd43d](06bd43d5521cb7237e5519a60cd9df020cabbceb)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-09-25 :+1: update dependencies ([ec22ee0](ec22ee0d34d23c0c511123d52af21d1a11ddc80b)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-09-25 :+1: introduce dependency_validator ([6cbc6e5](6cbc6e578421eb096dcac191d543b3f0a8f30933)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-09-25 :+1: link Firebase hosting ([33b04c5](33b04c567afca3a55cdb137b907e52ce8b588af0)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-09-25 :+1: enable experiments:webframeworks ([bb1bdbb](bb1bdbba7911374d913299dcb7d7bef80bb8d8fb)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-09-26 :+1: put Firebase Hosting unser Pulumi's control ([7bd23e9](7bd23e9538cd5c735c0d1bc83fc9066b60d67b52)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-09-27 :+1: add pulumi preview step to CI ([909f071](909f071a500316f3728aa4ea8599c3b2cc235733)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-09-27 :+1: import Firestore to Pulumi ([2976dc6](2976dc6e7009fb8ca40d071b712693d317040bd8)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-09-27 :+1: add cloud_firestore ([3eaa9a4](3eaa9a4ba514a9eebd2b1f9155e226ee1daad055)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-09-30 :+1: add firebase_auth ([201b2bf](201b2bf0de9d79903061c5bab9f26b3c62de854d)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-09-30 :+1: add flutter_login ([af2ca18](af2ca18f4687f7d04cc036c45c2cc8e657e09a33)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-10-10 :+1: organize file structure as feature-first style ([4c30e15](4c30e15ab5260c340c5f88aa241a6a20bc5a7428)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-10-11 :+1: organize sample_item files ([a19462c](a19462c8b7330a61d6da18b638a2fefaf6b8eff2)) by [SHINICHIRO SUZUKI](shin@sforzando.co.jp)
- 2023-10-18 :+1: upgrade pub ([634c156](634c1568ad5d4ab2c19e6f38d31eab29634a4331)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-11-05 :+1: update pub ([80eedd2](80eedd23b45ab731accbe2d5b9ad39133866bdf0)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-11-05 :+1: update pre-commit hooks ([1e369d6](1e369d66429a7faa0decb24901b10fb7d95e53e5)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-11-17 :+1: prepare YouTubeDataV3.yaml ([c8f2fbf](c8f2fbfcab4bd670f3c077a4e7b7dd84650d3c91)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-11-17 :+1: add .coderabbit.yaml ([1fbf01b](1fbf01b894e80350586ce96a84c0f3fc267b5db7)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-11-18 :+1: define /components/schemas/ContentDetails ([63117b0](63117b0729d056f525e856b28013542f201825f6)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-11-18 :+1: define GET /video ([c90216a](c90216a168715026e842744b723031a2a4839378)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-11-18 :+1: define GET /videoCategories ([15f7026](15f7026cf77d04d687bc6bd2c453b55ccfdabc09)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-11-27 :+1: init functions ([02a02a5](02a02a50e69640c7a15e3bc2b8f5e23866589743)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-11-27 :+1: implement an example of a timed function on Cloud Functions ([ef818a0](ef818a0b54c7206863f2903188e307e941b501c0)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-11-30 :+1: add functions/Makefile ([52aa597](52aa597b6d505d2fcdad0a92d44e7aee7f53b264)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-11-30 :+1: add install step of generated YouTubeDataV3 ([d9b3bda](d9b3bda60cbb4d0f7f1994a55b1acfb82863ad53)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-12-04 :+1: delete code generated by OpenAPI generator ([985cd5d](985cd5d10df66362d4a22a6a91862efce1d5f334)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-12-04 :+1: introduce google-api-python-client ([7410533](7410533f9f6a24417bbf4950df9b7a15adb2cdc1)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-12-04 :+1: set firebase admin SDK key ([5cd4ee9](5cd4ee9f96bd057a3781d966d0438c25700fcb7f)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-12-08 :+1: generate model.py using datamodel-codegen ([ab756eb](ab756eb300a881ffa0dcd992224abd6afff3c7b2)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-12-08 :+1: implement periodic_models.py ([30bb526](30bb5266149bc4e88b3a1393874b3f3c4b48f9e2)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-12-08 :+1: revise api/YouTubeDataV3.yaml ([b4571c5](b4571c57bebd108d0b86d260ff00ceca5acc94ad)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-12-09 :+1: implement video saving ([0f29ec7](0f29ec7ca5821326d89dafbc7e277ae45b3e3261)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-12-09 :+1: implement increment_youtube_data_api_quota() ([c2a5b2c](c2a5b2c881f53d1f813cebf4c963ed0b28a94f40)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-12-09 :+1: prepare CI for Cloud Functions ([6ad1d73](6ad1d736084a7704ee03e7c8f213c966c87f99d3)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-12-09 :+1: revise YouTubeDataV3.yaml ([3cfd94f](3cfd94ffc51c6fb0b5e4f84e65c1e7d2649f73ce)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)

### Styling

- 2023-11-16 :sparkles: add some image assets ([26814dc](26814dc76a4c99b16e28fc28d4eaeca3ec00c8b2)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)
- 2023-11-16 :sparkles: set icons ([5ab2372](5ab23729e22cb0319afe7535366c9ddf8b1acf74)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)

### Wip

- 2023-11-18 :construction: started to define about /videos ([806acc7](806acc7fdfe4180ff241d0558104b38a7cf785fe)) by [Shin'ichiro Suzuki](shin@sforzando.co.jp)

<!-- generated by git-cliff -->
