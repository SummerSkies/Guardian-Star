import UIKit

enum PlayMode {
    case observation, movement, interaction, none
}

class ModesBar: UIView {
    
    var currentMode: PlayMode
    
    var previousMode: PlayMode
    var observationEnabled: Bool
    var movementEnabled: Bool
    var interactionEnabled: Bool
    
    @IBOutlet weak var observationButton: UIButton!
    @IBOutlet weak var movementButton: UIButton!
    @IBOutlet weak var interactionButton: UIButton!
    
    func disableModes() {
        previousMode = currentMode
        observationEnabled = observationButton.isEnabled
        movementEnabled = movementButton.isEnabled
        interactionEnabled = interactionButton.isEnabled
        
        currentMode = .none
        observationButton.isEnabled = false
        movementButton.isEnabled = false
        interactionButton.isEnabled = false
    }
    
    func reenableModes() {
        currentMode = previousMode
        observationButton.isEnabled = observationEnabled
        movementButton.isEnabled = movementEnabled
        interactionButton.isEnabled = interactionEnabled
    }
    
    func changeButtonState(button: UIButton, newState: Bool) {
        button.isEnabled = newState
    }
    
    @IBAction func ObsButtonTapped (_ sender: UIButton) {
        currentMode = .observation
        
    }
    
    @IBAction func MoveButtonTapped (_ sender: UIButton) {
        currentMode = .movement
    }
    
    @IBAction func IntButtonTapped (_ sender: UIButton) {
        currentMode = .interaction
    }
}
let modesBar = ModesBar.self

modesBar.changeButtonState(button: modesBarView.observationButton, newstate: true)
