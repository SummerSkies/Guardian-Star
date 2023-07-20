import UIKit

struct Item {
    let name: String
    let icon: UIImage
    let message: String
}

class Backyard: UIViewController {
    
    var currentMode: PlayMode = .movement
    var inventory: [Item] = []
    
    @IBOutlet weak var hedgesArrow: UIButton!
    
    @IBOutlet weak var hedges: UIButton!
    @IBOutlet weak var vines: UIButton!
    @IBOutlet weak var bedroomWindows: UIButton!
    @IBOutlet weak var livingRoomWindow: UIButton!
    
    @IBOutlet weak var hedgesOutline: UIImageView!
    @IBOutlet weak var vinesOutline: UIImageView!
    @IBOutlet weak var bedroomWindowsOutline: UIImageView!
    @IBOutlet weak var livingRoomWindowOutline: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updatePlayMode()
    }
    
    func updatePlayMode() {
        switch currentMode {
        case .observation:
            hedgesArrow.isHidden = true
            
            hedges.isEnabled = true
            vines.isEnabled = true
            bedroomWindows.isEnabled = true
            livingRoomWindow.isEnabled = true
        case .movement:
            hedgesArrow.isHidden = false
            
            hedges.isEnabled = false
            vines.isEnabled = false
            bedroomWindows.isEnabled = false
            livingRoomWindow.isEnabled = false
        case .interaction:
            hedgesArrow.isHidden = true
            
            hedges.isEnabled = false
            vines.isEnabled = false
            bedroomWindows.isEnabled = false
            livingRoomWindow.isEnabled = false
        case .none:
            hedgesArrow.isHidden = true
            
            hedges.isEnabled = false
            vines.isEnabled = false
            bedroomWindows.isEnabled = false
            livingRoomWindow.isEnabled = false
        }
    }
    
    @IBAction func hedgesTapped (_ sender: UIButton) {
        if currentMode == .observation {
            print("The hedges have been looking a little unkempt lately.")
        }
    }
    
    @IBAction func vinesTapped (_ sender: UIButton) {
        if currentMode == .observation {
            print("I wonder if I could climb that ivy up to Daisy's window.")
            print("I'll have to start at the base, in the hedges.")
        }
    }
    
    @IBAction func livingRoomWindowTapped (_ sender: UIButton) {
        if currentMode == .observation {
            print("Someone forgot to close the window.")
            print("Daisy's mama must not be home.")
        }
    }
    
    @IBAction func bedoomWindowsTapped (_ sender: UIButton) {
        if currentMode == .observation {
            print("Daisy's bedroom is up there.")
        }
    }
}
