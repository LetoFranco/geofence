import Foundation

/// Will be in charge of asking permissions to the user.
struct LocationPermissions {
  
  enum Status {
    case unknown, granted, rejected
  }
  
  // MARK: - Attributes
  
  let completion: ((Status) -> Void)
  
  // MARK: - Functions
  
  func ask() {
    DispatchQueue.global().async {
      Thread.sleep(forTimeInterval: 2)
      DispatchQueue.main.async {
        completion(.granted)
      }
    }
  }
}
