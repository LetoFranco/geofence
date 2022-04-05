import Foundation

protocol Analytics {
  associatedtype Trackable: EventCase

  func track(_ event: Trackable)
}

protocol EventCase {
  var name: String { get }
  var params: [String: Any] { get }
}
