<a name="readme-top"></a>

<!-- PROJECT LOGO -->
<br />
<div align="center">

<h3 align="center">JoJo</h3>

  <p align="center">
    🐝 A Mojo Web Microservice framework 🔥
    <br/>

![Written in Mojo][language-shield]
[![MIT License][license-shield]][license-url]
[![Pixi Badge](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/prefix-dev/pixi/main/assets/badge/v0.json)](https://pixi.sh)
<br/>
[![Contributors Welcome][contributors-shield]][contributors-url]

[简体中文](README_CN.md) | English

  </p>
</div>

## Overview

- a `Mojo` Web Microservice framework, like `FastApi/Go-Micro/Volo`.

## Features

- TODO

## Includes

- https://prefix.dev/channels/jojo

| Project                               | Package                   | Rank       | Description        |
|---------------------------------------|---------------------------|------------|--------------------|
| [jojo](./packages/jojo)               | *                         | ⭐️⭐️⭐️     | jojo web framework |
| [jojo-cli](./packages/jojo-cli)       | *                         | ⭐️         | jojo cli tool      |
| [jojo-core](./packages/jojo-core)     | 🔥 [jojo-core][jojo-core] | ⭐️⭐️       | jojo core          |
| [jojo-http](./packages/jojo-http)     | *                         | ⭐️⭐️⭐️⭐️⭐️ | http framework     |                     | http               |
| [jojo-grpc](./packages/jojo-grpc)     | *                         | ⭐️⭐️⭐️⭐️   | grpc framework     |                     | `jgp`  | grpc               |
| [jojo-thrift](./packages/jojo-thrift) | *                         | ⭐️⭐️️⭐️    | thrift framework   |                     | `jgp`  | grpc               |

## Quick Start

1. Add the `jojo` channel to your `mojoproject.toml`, e.g:
   ```toml
   [project]
   channels = ["conda-forge", "https://conda.modular.com/max", "https://repo.prefix.dev/jojo"]
   ```

or use [magic](https://docs.modular.com/magic/):

```ruby
magic project channel add "https://repo.prefix.dev/jojo" 
```

2. Add `jojo_core` as a dependency:
   ```toml
   [dependencies]
   jojo_core = ">=0.1.1"
   ```

or use [magic](https://docs.modular.com/magic/):

```ruby
magic add jojo_core
 
```

## Reference

- In the design process of this framework, the following open source projects were referenced.

| language   | projects                                                                                   |
|:-----------|:-------------------------------------------------------------------------------------------|
| **Go**     | [go-micro][3], [hertz][4], [go-frame][5], [go-kratos][6], [echo][12], [iris][13], [gin][7] | 
| **Rust**   | [volo][8], [axum][9], [rocket][11], [poem][10]                                             |
| **Python** | [fastapi][1], [sanic][14], [django][2]                                                     |

- thanks: **`go-micro > volo > fastapi`**.

[1]: https://github.com/fastapi/fastapi

[2]: https://github.com/django/django

[3]: https://github.com/micro/go-micro

[4]: https://github.com/cloudwego/hertz

[5]: https://github.com/gogf/gf

[6]: https://github.com/go-kratos/kratos

[7]: https://github.com/gin-gonic/gin

[8]: https://github.com/cloudwego/volo

[9]: https://github.com/tokio-rs/axum


[10]: https://github.com/poem-web/poem

[11]: https://github.com/rwf2/Rocket

[12]: https://github.com/labstack/echo

[13]: https://github.com/kataras/iris

[14]: https://github.com/sanic-org/sanic

[language-shield]: https://img.shields.io/badge/language-mojo-orange

[license-shield]: https://img.shields.io/github/license/better-mojo/jojo?logo=github

[license-url]: https://github.com/better-mojo/jojo/blob/main/LICENSE

[contributors-shield]: https://img.shields.io/badge/contributors-welcome!-blue

[contributors-url]: https://github.com/better-mojo/jojo#contributing

[jojo-core]: https://prefix.dev/channels/jojo/packages/jojo-core



