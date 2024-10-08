# jojo

简体中文 | [English](README.md)

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


## 参考

- 参考如下项目, 设计本框架:

| lang   | projects                                                      |
|--------|---------------------------------------------------------------|
| python | [fastapi](), [django]()                                       |
| go     | [go-micro](), [hertz](), [go-kratos](), [go-frame](), [gin]() | 
| rust   | [volo](), [axum](), [rocket](), [poem]()                      |

- 感谢: `volo > go-micro > fastapi`.


