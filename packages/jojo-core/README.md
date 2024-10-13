# jojo-core

## Includes

- ✅ 公共定义:
    - 接口抽象定义
    - 常量定义
    - error 定义
- ✅ 通用的组件:
    - 日志
    - auth
    - 安全
    - 中间件
- ✅ utils 工具库

## Development

### Release

- [Taskfile.yml](./Taskfile.yml)
- package: https://prefix.dev/channels/jojo/packages/jojo-core

```ruby

# rel: 
task jojo-core:release
 
# publish:
task jojo-core:publish 
    
```

## FAQ: 踩坑汇总

### 🛑 `包目录`强制格式

- 支持`2种`目录格式:
    - `src/xxx_package/__init__.mojo`
    - `xxx_package/__init__.mojo`
- 当前不支持 `src/__init__.mojo` 格式.(当前不支持, 后续可能慢慢支持!)
- 也就是说, 需要显式指明`包名`. 否则, `打包` 和 `mojo test` 都无法正常工作.

### 🛑 `magic + mojo package` 打包踩坑

- 当前 magic 打包, 只支持 `src/xxx_package/__init__.mojo`, 这种打包格式.
    - 打包配置: [recipes](./recipes)
- 必须包含单根的`包名`, 否则,打出来的包, 路径是不正常的.
- 从`单元测试`的 导包路径格式, 就可以发现端倪. (这算是bug吧, 后续肯定要慢慢支持)
    - 参见 [test](./test) 导包路径