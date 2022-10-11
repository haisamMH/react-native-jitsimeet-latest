import UIKit
import JitsiMeetSDK

class JitsiMeetViewController: UIViewController {
  var conferenceOptions: JitsiMeetConferenceOptions?
  var resolver: RCTPromiseResolveBlock?
  var jitsiMeetView = JitsiMeetView()

  override func viewDidLoad() {
    jitsiMeetView.join(conferenceOptions)
    jitsiMeetView.delegate = self
    view = jitsiMeetView
//      self.preferredContentSize = CGSize(width: 100, height: 100)
  }
    
//    override func loadView() {
//        super.loadView()
//        view.frame = CGRect(x: view.bounds.origin.x,
//        y: view.bounds.origin.y,
//        width: view.bounds.width,
//        height: view.bounds.height * 0.8)
//    }

}

extension JitsiMeetViewController: JitsiMeetViewDelegate {
  func ready(toClose data: [AnyHashable : Any]!) {
    DispatchQueue.main.async {
        let rootViewController = UIApplication.shared.delegate?.window??.rootViewController as! UINavigationController
        rootViewController.popViewController(animated: false)
    }
      
    // if ((resolver) != nil) {
    //   resolver!([])
    // }
  }
}
