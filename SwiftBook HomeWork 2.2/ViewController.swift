import UIKit

enum CurrentLights {
    case red, yellow, green
}
final class ViewController: UIViewController {
    
    @IBOutlet var redTrafficLightView: UIView!
    @IBOutlet var yellowTrafficLightView: UIView!
    @IBOutlet var greenTrafficLightView: UIView!
    
    @IBOutlet var changeTrafficLightStatusButton: UIButton!
    
    private var currentLight = CurrentLights.red
    
    override func viewDidLayoutSubviews() {
        redTrafficLightView.layer.cornerRadius = redTrafficLightView.frame.width / 2
        yellowTrafficLightView.layer.cornerRadius = yellowTrafficLightView.frame.width / 2
        greenTrafficLightView.layer.cornerRadius = greenTrafficLightView.frame.width / 2
    }
    
    override func viewDidLoad() {
        changeTrafficLightStatusButton.layer.cornerRadius = 10
        
        redTrafficLightView.alpha = 0.3
        yellowTrafficLightView.alpha = 0.3
        greenTrafficLightView.alpha = 0.3
        
        super.viewDidLoad()
    }

    @IBAction func changeTrafficState() {
        if changeTrafficLightStatusButton.currentTitle == "START"{
            changeTrafficLightStatusButton.setTitle("NEXT", for: .normal)
        }

        switch currentLight {
        case .red:
            greenTrafficLightView.alpha = 0.3
            redTrafficLightView.alpha = 1
            currentLight = CurrentLights.yellow
        case .yellow:
            redTrafficLightView.alpha = 0.3
            yellowTrafficLightView.alpha = 1
            currentLight = CurrentLights.green
        default:
            yellowTrafficLightView.alpha = 0.3
            greenTrafficLightView.alpha = 1
            currentLight = CurrentLights.red
        }
        
    }
    
}

