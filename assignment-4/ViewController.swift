//
//  ViewController.swift
//  assignment-4
//
//  Created by Sungwoong Kang on 2022/01/23.
//

import UIKit

class ViewController: UIViewController {
    private var currentNumber: Int = 0 {
        didSet {
            DispatchQueue.main.async {
                self.valueLabel.text = "\(self.currentNumber)"
            }
        }
    }

    @IBOutlet weak var valueLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapPlusOneButton(_ sender: UIButton) {
        currentNumber += 1
    }
    
    @IBAction func tapClearButton(_ sender: UIButton) {
        currentNumber = 0
    }
}

