import Foundation

public protocol Networking {
  func call<M: Decodable, B: Encodable>(
    _ resource: Http<B>,
    _ callback: @escaping ActionResult<M, Error>)
  
  func setToken(_ token: String)
}

public typealias ActionResult<M, E: Error> = ((Result<M,E>) -> Void)

public struct NoReply: Codable {}

public struct Http<Body: Encodable> {
  let urlTyped: URL.Typed
  let method: Method<Body>
}

public extension Http {
  enum Method<Body: Encodable> {
    case get
    case post(body: Body)
  }
}

public extension URL {
  enum Typed {
    case final(full: String)
    case business(endpoint: String)
  }
}
