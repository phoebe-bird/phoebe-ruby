# Changelog

## 0.1.0-alpha.3 (2026-05-14)

Full Changelog: [v0.1.0-alpha.2...v0.1.0-alpha.3](https://github.com/phoebe-bird/phoebe-ruby/compare/v0.1.0-alpha.2...v0.1.0-alpha.3)

### Features

* initial stlc build ([9962257](https://github.com/phoebe-bird/phoebe-ruby/commit/996225799adca84237bb96693418261e5c5404fd))


### Chores

* enable release-please ([2f7728f](https://github.com/phoebe-bird/phoebe-ruby/commit/2f7728fa4d35ecef5d9dc82473268d9741d43147))
* regenerate from phoebe-config[#2](https://github.com/phoebe-bird/phoebe-ruby/issues/2) ([da60c3a](https://github.com/phoebe-bird/phoebe-ruby/commit/da60c3a6d521e6f13e6f0db54f8c17a9591b995c))

## 0.1.0-alpha.2 (2026-05-14)

Full Changelog: [v0.1.0-alpha.1...v0.1.0-alpha.2](https://github.com/phoebe-bird/phoebe-ruby/compare/v0.1.0-alpha.1...v0.1.0-alpha.2)

### Features

* **api:** manual updates ([109d3c5](https://github.com/phoebe-bird/phoebe-ruby/commit/109d3c57864c1b48b470cb29c152326362fff332))
* bump default connection pool size limit to minimum of 99 ([01ac449](https://github.com/phoebe-bird/phoebe-ruby/commit/01ac44998fab2e93a78b02e0a12caa3f5d022c43))
* expose base client options as read only attributes ([77d99c6](https://github.com/phoebe-bird/phoebe-ruby/commit/77d99c6e6021c0eecd95f800084b94936f74d5ff))
* expose recursive `#to_h` conversion ([940fafb](https://github.com/phoebe-bird/phoebe-ruby/commit/940fafb56476afbc94d8e7b1fe43db3ce3644150))
* support sorbet aliases at the runtime ([1c8b871](https://github.com/phoebe-bird/phoebe-ruby/commit/1c8b871035a4483f139fdcb85e3245c6a566c300))


### Bug Fixes

* `to_sorbet_type` should not return branded types ([37084eb](https://github.com/phoebe-bird/phoebe-ruby/commit/37084ebfc8ae89551c3dc97748f3fcf2a56a1e0a))
* calling `break` out of streams should be instantaneous ([fca92bf](https://github.com/phoebe-bird/phoebe-ruby/commit/fca92bfa572f66749c43303792fb36141ae0051e))
* correctly instantiate sorbet type aliases for enums and unions ([0676b84](https://github.com/phoebe-bird/phoebe-ruby/commit/0676b84f5075698c18618c98c9d3deef6348eaad))
* default content-type for text in multi-part formdata uploads should be text/plain ([decfc76](https://github.com/phoebe-bird/phoebe-ruby/commit/decfc76bed3c5dad19da4b609665b9fc7868e661))
* **internal:** update gemspec name ([f56d626](https://github.com/phoebe-bird/phoebe-ruby/commit/f56d62659d2e993f7207abbb4651d0923de40679))
* issue where json.parse errors when receiving HTTP 204 with nobody ([8cfbcb5](https://github.com/phoebe-bird/phoebe-ruby/commit/8cfbcb5c1c3a8ecc53bc875935b133973874a6c2))
* issue where we cannot mutate arrays on base model derivatives ([715fcdf](https://github.com/phoebe-bird/phoebe-ruby/commit/715fcdfa7aee36ca5c36a79dcb90841805ff6040))
* prevent rubocop from mangling `===` to `is_a?` check ([bbc3a94](https://github.com/phoebe-bird/phoebe-ruby/commit/bbc3a94869eb86c9e980a17e94c3d9fa2d8b1cec))
* should not reuse buffers for `IO.copy_stream` interop ([43ba832](https://github.com/phoebe-bird/phoebe-ruby/commit/43ba83288707aa952a0aff40f022b46f180f6047))
* sorbet types for enums, and make tapioca detection ignore `tapioca dsl` ([cdef832](https://github.com/phoebe-bird/phoebe-ruby/commit/cdef832fdaebe9c970da0e3a2b07d4ec01c8b3b9))


### Chores

* **ci:** enable for pull requests ([469208a](https://github.com/phoebe-bird/phoebe-ruby/commit/469208a0deb9d712b4959e48f08d10facf9bf73b))
* **ci:** only run for pushes and fork pull requests ([6e6d2c7](https://github.com/phoebe-bird/phoebe-ruby/commit/6e6d2c773e1a56ad14012a302c1d4be1f23aefa7))
* **ci:** skip uploading artifacts on stainless-internal branches ([fd00827](https://github.com/phoebe-bird/phoebe-ruby/commit/fd00827c5b2e333619e7c6454c703d97b1960d7b))
* configure new SDK language ([08c8fe7](https://github.com/phoebe-bird/phoebe-ruby/commit/08c8fe7e2ad9ca0f315325590f4a3d0d6f2a7605))
* **docs:** grammar improvements ([1d2a214](https://github.com/phoebe-bird/phoebe-ruby/commit/1d2a21499e071fd16fadaccd51a7e5ad248d85ee))
* fix misc linting / minor issues ([e965adc](https://github.com/phoebe-bird/phoebe-ruby/commit/e965adc3ceae1bd3c575bc9147341e1135961b66))
* fix typo in descriptions ([92d6940](https://github.com/phoebe-bird/phoebe-ruby/commit/92d69409f9daa721a7356a955b7acb48a0a8bbd9))
* force utf-8 locale via `RUBYOPT` when formatting ([6e6b75b](https://github.com/phoebe-bird/phoebe-ruby/commit/6e6b75b4dc805645862526c5ccaa8c888660d650))
* **internal:** allow streams to also be unwrapped on a per-row basis ([41961d8](https://github.com/phoebe-bird/phoebe-ruby/commit/41961d85ce1577f72619467a62751404bc98f926))
* **internal:** codegen related update ([1240216](https://github.com/phoebe-bird/phoebe-ruby/commit/124021629d657159ad717365d4e573382ee5a996))
* **internal:** codegen related update ([4648023](https://github.com/phoebe-bird/phoebe-ruby/commit/46480234b1911d2d1558859f64e95e6cf8460d3f))
* **internal:** codegen related update ([cacb367](https://github.com/phoebe-bird/phoebe-ruby/commit/cacb3671d92be2f4b4de23a595443921a2ce22ed))
* **internal:** codegen related update ([c1c6aec](https://github.com/phoebe-bird/phoebe-ruby/commit/c1c6aec66fcf7b36f729836bee082d818a65b81e))
* **internal:** codegen related update ([25c8d52](https://github.com/phoebe-bird/phoebe-ruby/commit/25c8d527124702fec3b496a475e6f99f874de467))
* **internal:** codegen related update ([95dc19d](https://github.com/phoebe-bird/phoebe-ruby/commit/95dc19d20c13b2c2368079578364f8fc8354d53d))
* **internal:** codegen related update ([52fcd8d](https://github.com/phoebe-bird/phoebe-ruby/commit/52fcd8de4df2284a9eade9ceec4d97fb1c3d68d8))
* **internal:** codegen related update ([400d5f5](https://github.com/phoebe-bird/phoebe-ruby/commit/400d5f5df2157b72505487daff44f27d58bb83b4))
* **internal:** codegen related update ([9b61f34](https://github.com/phoebe-bird/phoebe-ruby/commit/9b61f34f0a10fb177e78a8ee7b861b91b47e1d65))
* **internal:** codegen related update ([4c982a9](https://github.com/phoebe-bird/phoebe-ruby/commit/4c982a9ab7fb720eb15aa3a2fd28665c0c0a1c4e))
* **internal:** codegen related update ([cd3b18f](https://github.com/phoebe-bird/phoebe-ruby/commit/cd3b18f6ce8008b59ff89e8d59e871da83dbfa1b))
* **internal:** codegen related update ([31ebe27](https://github.com/phoebe-bird/phoebe-ruby/commit/31ebe2730f6c42e322ccf6be4cacf6b7160ad21e))
* **internal:** codegen related update ([3134935](https://github.com/phoebe-bird/phoebe-ruby/commit/31349351855890f7eea7f1c649652995a21f7531))
* **internal:** codegen related update ([84b61c6](https://github.com/phoebe-bird/phoebe-ruby/commit/84b61c68526cbce40b53d90314ec51f61cf70287))
* **internal:** codegen related update ([d8b62a5](https://github.com/phoebe-bird/phoebe-ruby/commit/d8b62a5ee6a2a813a0f805b96b566479367654d5))
* **internal:** codegen related update ([6849f19](https://github.com/phoebe-bird/phoebe-ruby/commit/6849f1903a602356217bd8db9c4b64d37640fb0a))
* **internal:** codegen related update ([e1206e5](https://github.com/phoebe-bird/phoebe-ruby/commit/e1206e54dd46adb0715194cf3d8c6b0e84875236))
* **internal:** codegen related update ([4b78f7d](https://github.com/phoebe-bird/phoebe-ruby/commit/4b78f7da2326b012f7b9dcad1c4920f930ead7c6))
* **internal:** codegen related update ([d75cd8e](https://github.com/phoebe-bird/phoebe-ruby/commit/d75cd8e2eca41ee7ea28388f4b1bb5e709092e9b))
* **internal:** codegen related update ([a30d0e2](https://github.com/phoebe-bird/phoebe-ruby/commit/a30d0e2855b40a82ccfa4119dea264b9fc71799b))
* **internal:** codegen related update ([4d0d53a](https://github.com/phoebe-bird/phoebe-ruby/commit/4d0d53aa6a136812160592d5a9106613428583bb))
* **internal:** codegen related update ([45a93b7](https://github.com/phoebe-bird/phoebe-ruby/commit/45a93b7580f89366400fe6ec0255f9621e44af09))
* **internal:** codegen related update ([a84cbb3](https://github.com/phoebe-bird/phoebe-ruby/commit/a84cbb34aee0524ee74c64c918af9f218bee5571))
* **internal:** codegen related update ([a951643](https://github.com/phoebe-bird/phoebe-ruby/commit/a951643c914e2289aff7031d4e5b8e0eb6e09c78))
* **internal:** codegen related update ([cd5e4fb](https://github.com/phoebe-bird/phoebe-ruby/commit/cd5e4fbdc79946fe48b2ad209979d92009e6fa1b))
* **internal:** codegen related update ([ca43f16](https://github.com/phoebe-bird/phoebe-ruby/commit/ca43f16c65936ab35a33605d773d7d55c5bce8f8))
* **internal:** codegen related update ([5146050](https://github.com/phoebe-bird/phoebe-ruby/commit/514605007368f304b8a4676a5a1a6cd6cd38b250))
* **internal:** codegen related update ([df3cb28](https://github.com/phoebe-bird/phoebe-ruby/commit/df3cb2805cb24253e1d2039d199c7831cec60852))
* **internal:** codegen related update ([2157d6c](https://github.com/phoebe-bird/phoebe-ruby/commit/2157d6c7fca81d9c102080d9151eb323f311e70a))
* **internal:** codegen related update ([88d9205](https://github.com/phoebe-bird/phoebe-ruby/commit/88d9205b7db0cc5e1192d34cc7442dfb9308ad68))
* **internal:** update `actions/checkout` version ([ac471b9](https://github.com/phoebe-bird/phoebe-ruby/commit/ac471b9e685cea1b15ec0c7f9f8134f13839baa6))
* **internal:** version bump ([5d56366](https://github.com/phoebe-bird/phoebe-ruby/commit/5d56366f132c78114b7c626bd6688d6f9e16fef0))
* move `cgi` into dependencies for ruby 4 ([efeb572](https://github.com/phoebe-bird/phoebe-ruby/commit/efeb572bcf6b178808a6a7c1400b759558944bc8))
* refine Yard and Sorbet types and ensure linting is turned on for examples ([bbd825d](https://github.com/phoebe-bird/phoebe-ruby/commit/bbd825d7facd9955f9adcfe83ad7d148417c1f1f))
* update contribute.md ([5aad15e](https://github.com/phoebe-bird/phoebe-ruby/commit/5aad15e8964e69599ae8d434dae4a0d9d7da64f6))
* use fully qualified names for yard annotations and rbs aliases ([82f1786](https://github.com/phoebe-bird/phoebe-ruby/commit/82f1786851dcf9f3f3173207c8d2246f6e5c6874))
* whitespaces ([e6f232f](https://github.com/phoebe-bird/phoebe-ruby/commit/e6f232f1a243ac10d7d53eaf4d4c8f8b705dbd88))


### Documentation

* prominently feature MCP server setup in root SDK readmes ([9583d55](https://github.com/phoebe-bird/phoebe-ruby/commit/9583d55d390bd9d0f9aa4e28974551b0f16edb1a))
* rewrite much of README.md for readability ([4fbff9f](https://github.com/phoebe-bird/phoebe-ruby/commit/4fbff9f778a037d1028af37c64e498d62337ef4c))

## 0.1.0-alpha.1 (2025-11-25)

Full Changelog: [v0.0.1-alpha.0...v0.1.0-alpha.1](https://github.com/phoebe-bird/phoebe-ruby/compare/v0.0.1-alpha.0...v0.1.0-alpha.1)

### Features

* **api:** manual updates ([1fd9262](https://github.com/phoebe-bird/phoebe-ruby/commit/1fd92628783d2411252d83e0377acf1da21f413b))
* bump default connection pool size limit to minimum of 99 ([262672c](https://github.com/phoebe-bird/phoebe-ruby/commit/262672c638ac7f9dde465e4e3617c3ec4f472681))
* expose base client options as read only attributes ([16f345a](https://github.com/phoebe-bird/phoebe-ruby/commit/16f345a15a1277a3c2deab4edb4208c84a947e81))
* expose recursive `#to_h` conversion ([c869e1f](https://github.com/phoebe-bird/phoebe-ruby/commit/c869e1f4d2ff5b3f03245731ebad1a60303e9f53))
* support sorbet aliases at the runtime ([d07d671](https://github.com/phoebe-bird/phoebe-ruby/commit/d07d671f1c55e0f721776431da1e21b0db96bcde))


### Bug Fixes

* `to_sorbet_type` should not return branded types ([8d96440](https://github.com/phoebe-bird/phoebe-ruby/commit/8d96440b71c46374e2deee07882b3ca6d9cc135e))
* correctly instantiate sorbet type aliases for enums and unions ([6bf7150](https://github.com/phoebe-bird/phoebe-ruby/commit/6bf7150d3e7c61a07adf860fddd28b39cd9d1896))
* default content-type for text in multi-part formdata uploads should be text/plain ([82095ce](https://github.com/phoebe-bird/phoebe-ruby/commit/82095cef3d7c014839eb70c5160c41af02d80195))
* **internal:** update gemspec name ([f6d98dd](https://github.com/phoebe-bird/phoebe-ruby/commit/f6d98dd5afb07c6aacf50ea0597fae6fbc8f3020))
* issue where we cannot mutate arrays on base model derivatives ([50824e1](https://github.com/phoebe-bird/phoebe-ruby/commit/50824e125a8f0a2ca9e8d680b6ec11dfe107bc93))
* prevent rubocop from mangling `===` to `is_a?` check ([790a75f](https://github.com/phoebe-bird/phoebe-ruby/commit/790a75fbf75a1a7efb077a5487636486c7e30a8b))
* should not reuse buffers for `IO.copy_stream` interop ([87fa6de](https://github.com/phoebe-bird/phoebe-ruby/commit/87fa6deddf5692a6df91eed19f7845e8311dcd41))
* sorbet types for enums, and make tapioca detection ignore `tapioca dsl` ([2414d1b](https://github.com/phoebe-bird/phoebe-ruby/commit/2414d1b74351b5ec3c1db9459be74c607e8caa3f))


### Chores

* **ci:** enable for pull requests ([162dcc9](https://github.com/phoebe-bird/phoebe-ruby/commit/162dcc90846e1029d4dad417136e691bc8a18d59))
* **ci:** only run for pushes and fork pull requests ([4ed407c](https://github.com/phoebe-bird/phoebe-ruby/commit/4ed407c9dc6b43c2143e63e4dfe004b5928a0bec))
* configure new SDK language ([8a46092](https://github.com/phoebe-bird/phoebe-ruby/commit/8a460928e1a096b6fb7ec6625f904c13c8835a89))
* **docs:** grammar improvements ([e20eea3](https://github.com/phoebe-bird/phoebe-ruby/commit/e20eea3fc09e6184ac4a5bffb49262d723ab9717))
* fix misc linting / minor issues ([73adc1a](https://github.com/phoebe-bird/phoebe-ruby/commit/73adc1ae124e2308f375e92728364aca99408bb7))
* force utf-8 locale via `RUBYOPT` when formatting ([c062a80](https://github.com/phoebe-bird/phoebe-ruby/commit/c062a80341b49cf742ea9f1b4c2c2ed1a76c6ee4))
* **internal:** allow streams to also be unwrapped on a per-row basis ([02a62e6](https://github.com/phoebe-bird/phoebe-ruby/commit/02a62e677d703870ea2a4ae99fc50eac5170ecdf))
* **internal:** codegen related update ([9abfa24](https://github.com/phoebe-bird/phoebe-ruby/commit/9abfa24fd54633fb16702cb1945bea89eef79827))
* **internal:** codegen related update ([62d7eb7](https://github.com/phoebe-bird/phoebe-ruby/commit/62d7eb7158ea44ac5b9b010c40e74b8f8e883ee3))
* **internal:** codegen related update ([0ca0b0c](https://github.com/phoebe-bird/phoebe-ruby/commit/0ca0b0c431b7d51c530970af69c7d602e23dc452))
* **internal:** codegen related update ([601c9aa](https://github.com/phoebe-bird/phoebe-ruby/commit/601c9aa89f6d486e71cd3d4b7749ccc88434479d))
* **internal:** codegen related update ([31c50dc](https://github.com/phoebe-bird/phoebe-ruby/commit/31c50dc7248995f7a263eb6e9117d5192fbbb85e))
* **internal:** codegen related update ([d4e5e50](https://github.com/phoebe-bird/phoebe-ruby/commit/d4e5e5053ca500e5ebee7f451a7cb5d9dd429903))
* **internal:** codegen related update ([61c7ce5](https://github.com/phoebe-bird/phoebe-ruby/commit/61c7ce5277ff29147fd84502124bf9b86e331df3))
* refine Yard and Sorbet types and ensure linting is turned on for examples ([ec376dc](https://github.com/phoebe-bird/phoebe-ruby/commit/ec376dcd0c83e0ae37b09bd6ebdc913961ca0179))
* update contribute.md ([94bfe7d](https://github.com/phoebe-bird/phoebe-ruby/commit/94bfe7d4cf938c8d5e106d571da77ae837950b26))
* use fully qualified names for yard annotations and rbs aliases ([7855b76](https://github.com/phoebe-bird/phoebe-ruby/commit/7855b76fffb58b64a66f11d9aa4f863481f5ac8c))
* whitespaces ([4f6512e](https://github.com/phoebe-bird/phoebe-ruby/commit/4f6512ecbf4277e9978b4316acd2d8bb98a68e9b))


### Documentation

* rewrite much of README.md for readability ([c1eba6f](https://github.com/phoebe-bird/phoebe-ruby/commit/c1eba6f72e242feea6263eaf349c57b221972216))
