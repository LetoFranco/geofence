import Foundation

public extension String {
  
  func localize(
    in bundle: Bundle = .main, comment: String = ""
  ) -> String {
    NSLocalizedString(self, tableName: "Localization", bundle: bundle, comment: comment)
  }
  
  func localize(
    with arguments: [CVarArg], in bundle: Bundle = .main, comment: String = ""
  ) -> String {
    String(format: localize(in: bundle, comment: comment), locale: nil, arguments: arguments)
  }
}

