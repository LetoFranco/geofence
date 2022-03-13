import Foundation
import UIKit

public struct App<Nav: UINavigationController, Net: Networking> {
  
  public struct Dependencies<Nav: UINavigationController, Net: Networking> {
    let navigation: Nav
    let networking: Net
  }
  
  private let dependencies: Dependencies<Nav, Net>
  public init(_ dependencies: Dependencies<Nav, Net>) { self.dependencies = dependencies }
  
  func launch() {
    // We should check if the user is logged in. For now we are going to asume he is logged in
    goHome()
  }
  
  // MARK: - Private Functions
  
  private func goHome() {
    // Showing a Tab Controller, with home, map and settings
    
    let viewController = UIViewController()
    viewController.view.backgroundColor = .green
    
    dependencies.navigation.pushViewController(viewController, animated: true)
  }
}
