@value
struct Options:
    var logger: String

    # fixme: real type
    var broker: String
    var registry: String
    var tracer: String
    var transport: String

    #
    var context: String

    var router: String

    # fixme: real type
    var codecs: List[String]
    var name: String
    var id: String
    var version: String
    var advertise: String
    var address: String


@value
struct HandlerOptions:
    var metadata: String
    var internal: Bool


@value
struct SubscriberOptions:
    var context: String
    var queue: String

    #
    var auto_ack: Bool
    var internal: Bool


#
#
#
trait Server:
    fn __init__(
        inout self,
    ) raises:
        ...

    fn Optins(self) raises -> Options:
        ...

    fn handle(self, h: Handler) raises -> AnyType:
        ...

    fn new_handler(self, v: AnyType, opts: HandlerOptions) raises -> Handler:
        ...

    fn new_subscriber(self, v: AnyType, opts: SubscriberOptions) raises -> Handler:
        ...

    fn subscribe(self, sub: Subscriber) raises -> AnyType:
        ...

    fn start(self) raises -> AnyType:
        ...

    fn stop(self) raises -> AnyType:
        ...

    fn string(self) raises -> String:
        ...


#
#
#
trait Handler:
    fn name(self) raises -> String:
        ...

    fn handler(self) raises -> AnyType:
        ...

    fn endpoint(self) raises -> String:
        ...

    fn options(self) raises -> HandlerOptions:
        ...


#
#
#
trait Subscriber:
    fn topic(self) raises -> String:
        ...

    fn subscriber(self) raises -> AnyType:
        ...

    fn endpoint(self) raises -> String:
        ...

    fn options(self) raises -> SubscriberOptions:
        ...


trait Router:
    fn process_message(self, ctx: String, m: Message) raises -> AnyType:
        ...

    fn serve_request(self, ctx: String, req: Request, rsp: Response) raises -> AnyType:
        ...


trait Message:
    fn topic(self) raises -> String:
        ...

    fn payload(self) raises -> AnyType:
        ...

    fn content_type(self) raises -> String:
        ...

    fn headers(self) raises -> AnyType:
        ...

    fn body(self) raises -> AnyType:
        ...

    fn codec(self) raises -> String:
        ...


trait Request:
    fn service(self) raises -> String:
        ...

    fn method(self) raises -> String:
        ...

    fn endpoint(self) raises -> String:
        ...

    fn content_type(self) raises -> String:
        ...

    fn headers(self) raises -> AnyType:
        ...

    fn body(self) raises -> AnyType:
        ...

    fn read(self) raises -> AnyType:
        ...

    fn codec(self) raises -> String:
        ...

    fn stream(self) raises -> Bool:
        ...


trait Response:
    fn codec(self) raises -> String:
        ...

    fn write_header(self, h: AnyType) raises -> AnyType:
        ...

    fn write(self, v: AnyType) raises -> AnyType:
        ...
