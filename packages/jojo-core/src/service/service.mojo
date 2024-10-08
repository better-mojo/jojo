from .option import Options, Option
from ..client import Client
from ..server import Server


trait Service:
    fn __init__(inout self) raises:
        ...

    fn __init__(inout self, opts: Option) raises:
        ...

    fn name(self) raises -> String:
        ...

    fn options(self) raises -> Options:
        ...

    fn client(self) raises -> Client:
        ...

    fn server(self) raises -> Server:
        ...

    fn run(self) raises -> AnyType:
        ...

    fn string(self) raises -> String:
        ...
