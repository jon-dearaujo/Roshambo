//
//  ViewController.swift
//  Roshambo
//
//  Created by Jonathan De Araújo Silva on 22/07/22.
//

import UIKit

class PickViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    // Code only
    @IBAction func rockPressed(_ sender: UIButton) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "resultViewController") as! ResultViewController
        controller.picked = Options.Rock
        present(controller, animated: true)
    }

    // Mixed
    @IBAction func paperPressed(_ sender: Any) {
        performSegue(withIdentifier: "play", sender: Options.Paper)
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ResultViewController
        if segue.identifier == "pickScissors" {
            destination.picked = Options.Scissors
        } else if segue.identifier == "play" {
            destination.picked = sender as! Options
        }
    }
}

