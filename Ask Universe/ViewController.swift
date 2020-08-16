import UIKit

class ViewController: UIViewController {
    
    let backgroundImage = UIImageView()
    let answerButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(resetImage), name: NSNotification.Name(rawValue: "reset"), object: nil)
        
        view.addSubview(backgroundImage)
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.contentMode = .scaleAspectFill
        backgroundImage.image = #imageLiteral(resourceName: "universeBackgound")
        
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.addTarget(self, action: #selector(didTapAnswerImage), for: .touchUpInside)
        answerButton.setImage(#imageLiteral(resourceName: "askText"), for: .normal)
        
        NSLayoutConstraint.activate([
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            answerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            answerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        NotificationCenter.default.removeObserver(self)
        print(">>>>>>>>>>>>>>>>>>>>>>")
    }

    @objc private func didTapAnswerImage() {
        let images = [#imageLiteral(resourceName: "answer1"), #imageLiteral(resourceName: "answer2"), #imageLiteral(resourceName: "answer3"), #imageLiteral(resourceName: "answer4"), #imageLiteral(resourceName: "answer5"), #imageLiteral(resourceName: "answer6"), #imageLiteral(resourceName: "answer7"), #imageLiteral(resourceName: "answer8"), #imageLiteral(resourceName: "answer9"), #imageLiteral(resourceName: "answer10"), #imageLiteral(resourceName: "answer11"), #imageLiteral(resourceName: "answer12"), #imageLiteral(resourceName: "answer13"), #imageLiteral(resourceName: "answer14"), #imageLiteral(resourceName: "answer15"), #imageLiteral(resourceName: "answer16"), #imageLiteral(resourceName: "answer17"), #imageLiteral(resourceName: "answer18"), #imageLiteral(resourceName: "answer19"), #imageLiteral(resourceName: "answer20")]
        answerButton.setImage(images.randomElement(), for: .normal)
    }
    
    @objc private func resetImage() {
        answerButton.setImage(#imageLiteral(resourceName: "askText"), for: .normal)
    }
}

