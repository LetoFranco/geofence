import Foundation

public struct AppError: Error {
  let reason: String
  
  public init(reason: String) {
    self.reason = reason
  }
}
