//
//  ViewController.swift
//  aastepanov_6 hw1
//
//  Created by Алексей Степанов on 2022-09-18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ourViews: [UIView]!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonWasPressed(_ sender: Any) {
        button.isEnabled = false
        var set = Set<UIColor>()
        while (set.count != ourViews.count) {
            set.insert(
                UIColor(
                    red: .random(in: 0...1),
                    green: .random(in: 0...1),
                    blue: .random(in: 0...1),
                    alpha: 1)
            )
        }
        UIView.animate(withDuration: 0.5, animations: {
            for view in self.ourViews {
                view.layer.cornerRadius = .random(in: 5...100)
                view.backgroundColor = set.popFirst()
            }
        }) { completion in
            self.button.isEnabled = true }
    }
    
}

