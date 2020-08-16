import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {

    @IBOutlet weak var answerButton: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        NotificationCenter.default.addObserver(self, selector: #selector(resetImage), name: NSNotification.Name(rawValue: "reset"), object: nil)
    }
    
    override func willDisappear() {
        super.willDisappear()
        NotificationCenter.default.removeObserver(self)
    }
    
    @IBAction func didTapAnswerButton() {
        let images = [#imageLiteral(resourceName: "answer1"), #imageLiteral(resourceName: "answer2"), #imageLiteral(resourceName: "answer3"), #imageLiteral(resourceName: "answer4"), #imageLiteral(resourceName: "answer5"), #imageLiteral(resourceName: "answer6"), #imageLiteral(resourceName: "answer7"), #imageLiteral(resourceName: "answer8"), #imageLiteral(resourceName: "answer9"), #imageLiteral(resourceName: "answer10"), #imageLiteral(resourceName: "answer11"), #imageLiteral(resourceName: "answer12"), #imageLiteral(resourceName: "answer13"), #imageLiteral(resourceName: "answer14"), #imageLiteral(resourceName: "answer15"), #imageLiteral(resourceName: "answer16"), #imageLiteral(resourceName: "answer17"), #imageLiteral(resourceName: "answer18"), #imageLiteral(resourceName: "answer19"), #imageLiteral(resourceName: "answer20")]
        answerButton.setBackgroundImage(images.randomElement())
    }
    
    @objc private func resetImage() {
        answerButton.setBackgroundImage(#imageLiteral(resourceName: "askText"))
    }
}
