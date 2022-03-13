import Foundation

extension Error where Self == AppError {
  
  static var unknown: AppError { .init(reason: "UnknownError".localized) }
  
}
