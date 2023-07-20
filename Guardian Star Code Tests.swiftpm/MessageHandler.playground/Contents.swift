import UIKit

enum PlayMode {
    case observation, movement, interaction, none
}

class MessageHandler {
    
    var tutorialIsActive: Bool
    var currentMode: PlayMode
    
    let modesBar = ModesBar
    let livingRoomWindow = LivingRoomWindow
    
    @IBOutlet weak var inventoryButton: UIButton!
    @IBOutlet weak var modesBarView: UIView!
    
    func beginGameDialogue() {
        if tutorialIsActive {
            livingRoomWindow.windowArrow.isEnabled = false
            modesBar.disableModes()
            inventoryButton.isEnabled = false
        }
        print("Susie: I've been alone for too long. Daisy should have found me by now.")
        print("Susie: I'd better go find her.")
        
        guard tutorialIsActive else { return }
        print("Guide: Press the magnifying glass to enter Observation Mode.")
        modesBar.changeButtonState(button: modesBarView.observationButton, newstate: true)
    }
      
       
       Tutorial:
       1: "Press the magnifying glass to enter Observation Mode."
       - Player action: PRESS BUTTON
       1: "See those glowing outlines?"
       2: "In Observation Mode, you have tap objects with an outline to learn more about them."
       3: "Give it a try!"
       Prompt:
       1: "Drag to Pan"
       - Player action: OBSERVE ANYTHING
       Dialogue:
       <Depending on which object they clicked, the corresponding message will show. The player will be unable to leave Observation Mode until they observe something.>
       Tutorial:
       1: "In Observation Mode, you are unable to interact with objects or move around."
       2: "These two icons can help with that!"
       3: "Let's start with this one."
       Player action: PRESS MOVE BUTTON
       1: "You've enered Movement Mode!"
       2: "In Movement Mode, you'll see arrows that point to possible locations for you to move to."
       3: "This arrow points to the hedges. Let's see what happens when you tap it!"
       Player action: MOVE TO HEDGES
       <The player will be unable to leave Movement Mode until they move to the hedges.>
       1: "See that? You moved forward!"
       2: "Now, you are inside the hedges by the house. Why don't you try exploring on your own now?"
       Player action: CLIMB TO BEDROOM WINDOWS
       <The player will be able to move freely between Observation and Movement Mode.>
       Dialogue:
       1: "Daisy! Can you hear me? I'm out here!"
       2: "Looks like I won!"
       3: "..."
       4: "Daisy always waits in her room when she can't find me."
       5: "Something's wrong. I need to find her."
       Player action: MOVE TO HEDGES
       Tutorial:
       1: "See that branch there? Seems inconsequensial, doesn't it?"
       2: "Throughout Guardian Star, you'll need to collect items for later use."
       3: "You never know what kind of use an object can have."
       4: "This icon will let you enter Interaction Mode."
       5: "In Interaction Mode, you are unable to observe objects or move to new locations. However, you ARE able to see objects that might be useful to you later!"
       Prompt:
       1: "Tap the object to pick it up!"
       <Prompts disappear after a short amount of time or after acting as suggested. The player is free to enter any mode now, but is still unable to enter the Living Room.>
       Player action: PICK UP BRANCH
       Tutorial:
       1: "Sometimes, locations or items are unavaliable to you until you've completed another task."
       2: "Did you try to enter the open window just below Daisy's room?"
       3: "Go on, give it a try!"
       <The player is now allowed in the Living Room.>
       PLAYER ACTION: MOVE TO POOL TABLE, ENTER INTERACTION MODE
       1: "There are two types of interactable items."
       2: "Collectable items, like the branch outside, have a solid white outline."
       3: "Event items have a solid green outline. If you interact with these, they might change your environment to your advantage!"
       PLAYER ACTION: HAS TWINE AND POOL BALL
       1: "See this little backpack button here? If you tap it, you'll open your inventory."
       PLAYER ACTION: OPEN INVENTORY
       <Player will be unable to close inventory>
       <When in the inventory, all play modes will be inaccessible.>
       1: "Here, you can see all the items you've collected so far."
       2: "These two icons here switch which Inventory Mode is active. By default, it's set to Muse Mode."
       3: "While in Muse Mode, you can tap items and get a description of them. Think of it as Observation Mode, but for your inventory!"
       4: "This icon puts you in Combine Mode."
       <The player is now able to enter Combine Mode.>
       PLAYER ACTION: ENTER COMBINE MODE
       5: "In Combine Mode, you can select items of your inventory to combine into new items!"
       6: "Don't worry, you can't combine items that won't be useful together. You also can't combine items that have individual use."
       <Player ability to leave inventory restored.>
       PLAYER ACTION: INTERACT WITH KEY
       1: "Remember how I said that sometimes, items will be unvaliable to you until you meet certain requirements?"
       2: "Sometimes, that means another item!"
       3: "Let's look at what you have."
       PLAYER ACTION: OPEN INVENTORY
       1: "This button will allow you to use whatever item you have selected."
       <Player is now able to enter Use Mode. If the User previously unlocked Combine Mode, this mode will become unavaliable.>
       2: "Select an item in your inventory and use it on an interactable object!"
       <Player will not be able to leave inventory.>
       IF player has selected item in Use Mode:
       Prompt:
       1: "Tap the object you want to use your item on!"
       PLAYER ACTION: USE BRANCH ON KEY
       <If the player uses the wrong object on the item, a generic prompt by Susie will tell them it can't be used here.>
       Tutorial:
       1: "Great! You picked up a key."
       <Player is now able to close inventory, enter Use Mode, and, if unlocked, enter Combine Mode.>
       PLAYER ACTION: PUSH CHAIR
       Dialogue:
       1: "If I tie this makeshift weight around me, I should be heavy enough to push this chair..."
       2: "Fantastic!"
    Perfect! That should be all for now.
}
