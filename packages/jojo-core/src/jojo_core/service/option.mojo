alias Option = fn (inout opts: Options) -> None


@value
struct Options:
    # FIXME: Add more options
    var registry: String
    var store: String
    var cmd: String
    var config: String

    # FIXME: Add more options
    var client: String
    var server: String

    # FIXME: Add more options
    var context: String

    #
    var cache: String
    var transport: String
    var logger: String

    # FIXME: Add more hook functions
    var before_start: List[String]
    var before_stop: List[String]
    var after_start: List[String]
    var after_stop: List[String]

    #
    var signal: Bool
