from testing import assert_equal, assert_false, assert_raises, assert_true
from core import cli, version

def test_echo():
    assert_equal(1, 1)
    assert_false(1 == 2)
    assert_true(1 == 1)
#     assert_raises(AssertionError, assert_true, 1 == 2)


def test_cli():
    var ret = cli()
    print(ret)


def test_cli_version():
    var ver = version()
    print(ver)
