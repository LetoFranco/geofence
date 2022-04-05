import Foundation

struct AppEvent: EventCase {
  let name: String
  let params: [String: Any]
}
