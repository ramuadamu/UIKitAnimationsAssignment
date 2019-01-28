//
//  ViewController.swift
//  UIKitAnimationAssignment
//
//  Created by Ramu on 1/28/19.
//  Copyright © 2019 Ramu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var duck: UIImageView!
    @IBOutlet weak var dog: UIButton!
    private var animator: UIViewPropertyAnimator!
    override func viewDidLoad() {
        super.viewDidLoad()
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: {
            self.duck.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
        })
}
    @IBAction func imageTransition(_ sender: UIButton) {
        if dog.imageView?.image == UIImage.init(named: "dog") {
            UIView.transition(with: dog, duration: 1.0, options: [.transitionFlipFromBottom], animations: {
                self.dog.setImage(UIImage(named: "cat"), for: .normal)
            })
        } else {
            UIView.transition(with: dog, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                self.dog.setImage(UIImage(named: "dog"), for: .normal)
            })
        }
        
    }
    
    @IBAction func toggledDuck(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
    
    }



