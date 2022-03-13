import Foundation

/// Concrete implementation of google analytics

class GoogleAnalytics: Analytics {
  typealias Trackable = AppEvent
  
  func track(_ event: Trackable) {
    print("Tracking", event.name, "With: ", event.params)
  }
}
