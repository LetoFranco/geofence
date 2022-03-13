import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  
  var window: UIWindow?
  
  func scene(
    _ scene: UIScene,
    willConnectTo session: UISceneSession,
    options connectionOptions: UIScene.ConnectionOptions
  ) {
    guard let windowScene = scene as? UIWindowScene else { return }
    
    let window = UIWindow(frame: windowScene.coordinateSpace.bounds)
    window.windowScene = windowScene
    let navigation = UINavigationController()
    window.rootViewController = navigation
    window.makeKeyAndVisible()
    
    start(with: navigation)
    self.window = window
  }
  
  func sceneDidDisconnect(_ scene: UIScene) {}
  func sceneDidBecomeActive(_ scene: UIScene) {}
  func sceneWillResignActive(_ scene: UIScene) {}
  func sceneWillEnterForeground(_ scene: UIScene) {}
  
  func sceneDidEnterBackground(_ scene: UIScene) {
    (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
  }
  
  // MARK: - Private Functions
  
  private func start(with navigation: UINavigationController) {
    let networking = AlamofireClient(rootPathUrl: "ToBeDefined")
    App(.init(navigation: navigation, networking: networking)).launch()
  }
}
