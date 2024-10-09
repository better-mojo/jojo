# jojo

web framework, like fastapi

[简体中文](README_CN.md) | English

## Intro

- a `Mojo` Web Microservice framework, like `Fastapi/Volo/Go-Micro`.

## Features

- TODO

## Includes

| Name                                  | Rank       | Description        |
|---------------------------------------|------------|--------------------|
| [jojo](./packages/jojo)               | ⭐️⭐️⭐️     | jojo web framework |
| [jojo-cli](./packages/jojo-cli)       | ⭐️         | jojo cli tool      |
| [jojo-core](./packages/jojo-core)     | ⭐️⭐️       | jojo core          |
| [jojo-http](./packages/jojo-http)     | ⭐️⭐️⭐️⭐️⭐️ | http framework     |                     | http               |
| [jojo-grpc](./packages/jojo-grpc)     | ⭐️⭐️⭐️⭐️   | grpc framework     |                     | `jgp`  | grpc               |
| [jojo-thrift](./packages/jojo-thrift) | ⭐️⭐️️⭐️    | thrift framework   |                     | `jgp`  | grpc               |

## Quick Start

- TODO

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