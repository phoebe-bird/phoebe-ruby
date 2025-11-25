# Changelog

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
