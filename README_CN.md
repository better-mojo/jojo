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

简体中文 | [English](README.md)

  </p>
</div>

## 简介

- 一个 Mojo Web 微服务框架(包含: HTTP/gRPC/Thrift 微服务框架支持).

### 特性

- ✅ 开箱即用, 内置大量组件.
- ✅ 低耦合, 模块化 + 接口抽象, 易于替换默认组件 & 易于扩展.

> 混合模式:

- ✅ 支持`微服务`全家桶模式: `HTTP + gRPC/Thrift`.
- ✅ 支持`Restful api` 模式: 单独使用 `HTTP` 框架.
- ✅ 支持 `RPC` 模式: 单独使用 `gRPC/Thrift` 框架.

## 项目结构

| Name                                  | Rank       | Description               |
|---------------------------------------|------------|---------------------------|
| [jojo](./packages/jojo)               | ⭐️⭐️⭐️     | jojo web 框架全家桶            |
| [jojo-cli](./packages/jojo-cli)       | ⭐️         | jojo 命令行工具                |
| [jojo-core](./packages/jojo-core)     | ⭐️⭐️       | jojo 公共依赖 & 公共定义/设计(抽象接口) |
| [jojo-http](./packages/jojo-http)     | ⭐️⭐️⭐️⭐️⭐️ | http 微服务框架                |                     | http               |
| [jojo-grpc](./packages/jojo-grpc)     | ⭐️⭐️⭐️⭐️   | grpc 微服务框架                |                     | `jgp`  | grpc               |
| [jojo-thrift](./packages/jojo-thrift) | ⭐️⭐️️⭐️    | thrift 微服务框架              |                     | `jgp`  | grpc               |

## 快速开始

- 安装:

```bash


 
```

## 参考 {#reference}

- 参考如下项目, 设计本框架:

| language   | projects                                                                                   |
|:-----------|:-------------------------------------------------------------------------------------------|
| **Go**     | [go-micro][3], [hertz][4], [go-frame][5], [go-kratos][6], [echo][12], [iris][13], [gin][7] | 
| **Rust**   | [volo][8], [axum][9], [rocket][11], [poem][10]                                             |
| **Python** | [fastapi][1], [sanic][14], [django][2]                                                     |

- 感谢: **`go-micro > volo > fastapi`**.

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

### Docs

- [mojo package 指令](https://docs.modular.com/mojo/cli/package)
- [magic 使用教程](https://docs.modular.com/max/tutorials/magic)
- https://prefix.dev/
- https://github.com/prefix-dev/rattler-build
- https://prefix-dev.github.io/rattler-build/latest/
