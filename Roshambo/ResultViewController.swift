//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Jonathan De Araújo Silva on 22/07/22.
//

import UIKit

class ResultViewController: UIViewController {

    var picked: Options?

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let result = picked!.getResult(roll())
        resultImage.image = UIImage(named: result.image)
        resultLabel.text = result.text
    }

    private func roll() -> Options {
        return Options.allCases.randomElement()!
    }
    
    @IBAction func playAgainPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
