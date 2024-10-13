from core import cli

from jojo_core.app import version

fn main():
    var v = version()
    print(v)

    _ = cli()

