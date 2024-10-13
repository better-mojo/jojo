alias MessageOption = fn (MessageOptions) -> MessageOptions
alias RequestOption = fn (RequestOptions) -> RequestOptions
alias BackoffFn = fn (ctx: String, req: Request, attempts: Int) -> List[String]
alias RetryFn = fn (ctx: String, req: Request, retry_count: Int, err: AnyType) -> Bool
alias CallFn = fn (ctx: String, req: Request, rsp: AnyType) -> AnyType
alias CallWrapper = fn (f: CallFn) -> CallFn


@value
struct Options:
    var call_options: CallOptions
    var router: AnyTrivialRegType  # fixme: real type

    var logger: String

    var content_type: String


@value
struct MessageOptions:
    var content_type: String


@value
struct RequestOptions:
    var context: String  # fixme: real type
    var content_type: String
    var stream: Bool


@value
struct CallOptions:
    var context: String  # fixme: real type

    #
    var backoff: BackoffFn
    var retry: RetryFn

    #
    var address: List[String]

    #
    var call_wrappers: List[CallWrapper]

    #
    var retries: Int

    var service_token: Bool
    var conn_close: Bool


@value
struct PublishOptions:
    var context: String
    var exchange: String


trait Router:
    fn send_request(self, ctx: String, req: Request, rsp: Response) raises -> AnyType:
        ...


#
#
#
trait Message:
    fn topic(self) raises -> String:
        ...

    fn payload(self) raises -> AnyType:
        ...

    fn content_type(self) raises -> String:
        ...


#
#
#
trait Request:
    fn service(self) raises -> String:
        ...

    fn method(self) raises -> String:
        ...

    fn endpoint(self) raises -> String:
        ...

    fn content_type(self) raises -> String:
        ...

    fn body(self) raises -> AnyType:
        ...

    fn codec(self) raises -> String:  # fixme
        ...

    fn stream(self) raises -> Bool:
        ...


trait Response:
    fn codec(self) raises -> String:  # fixme
        ...

    fn header(self) raises -> AnyType:
        ...

    fn read(self) raises -> AnyType:
        ...


#
#
#
trait Client:
    fn __init__(
        inout self,
    ) raises:
        ...

    fn options(self) raises -> Options:
        ...

    fn new_message(self, topic: String, msg: AnyType, opts: MessageOption) raises -> Message:
        ...

    fn new_request(self, service: String, endpoint: String, req: AnyType, opts: RequestOption) raises -> Request:
        ...

    fn call(self, ctx: AnyType, req: Request, rsp: AnyType, opts: CallOptions) raises -> AnyType:
        ...

    fn stream(self, ctx: AnyType, req: Request, opts: CallOptions) raises -> AnyType:
        ...

    fn publish(self, ctx: AnyType, msg: Message, opts: PublishOptions) raises -> AnyType:
        ...

    fn string(self) raises -> String:
        ...
