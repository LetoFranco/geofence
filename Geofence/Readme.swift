/*
 ** Readme **
 
 About the Code Challenge:
  I prefer to communicate my decisions in my way to build the app, instead of showing how to ask the user for permissions and other stuff code related stuff.
  The main goal of this file and the code of Geofence is more to give a glimpse of the app and give the reasons behind the decisions that i made, without focusing in coding.
 In case of any doubts, please don't hesitate in contact me.
 
 The Idea:
 
 Become a Modularized app, now due to lack of time it's all inside this project.
 
 About Dependencies:
  The idea is to have a protocol and a concrete implementation as two separed modules.
  App is the only available to talk with concrete implementation modules such as CoreLocation/CoreData/GoogleAnalytics/Alamofire Client.
  
 There is a plan to have UIKit Module and Foundations Module.
 
 Features Modules are also a posibility and i encourage to do it without any dependency to uikit, this will ease our way from UIKit to SwiftUI in the following years among other benefits.
 
 All of our features will have a single door to entry that feature and i propouse to use a composition way to create the feature.
 
 Taking a deeper look to one feature, for E.G:
 
 func askForGpsPermissions(onAccept agreeBlock: @escaping (() -> Void)) {
    let responseToAsk = ActionsForDecision(accept: agreeBlock, decline: popToRoot)
    let presenter = LocationPermissionPresenter()
    let viewBuilder = PermissionViewBuilder(presenter: presenter)
    let router = PermissionRouter(navigation: dependencies.navigation, factory: viewResolver)
    let coordinator = PermissionCoordinator(flow: router, actions: responseToAsk)
    coordinator.askForPermission()
 }
 
 Testing:
 
  Unit testing for all modules.
  Integration testing for App modules.
 
 What should we test?
  Evety line of code in which those components is exhibit behaviour.
  In other words, everything that is not a struct with plain data.
 
 I preffer to create the app in the foundations of been simple, testeable, with small and cohesive files and basically code that is easy to read and maintaing.
 */
