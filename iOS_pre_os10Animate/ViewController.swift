//
//  ViewController.swift
//  iOS_pre_os10Animate
//
//  Created by msano on 2017/02/14.
//  Copyright © 2017年 msano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var circle: UIView!
    @IBOutlet weak var circle: UIView!
    var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initAnimate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func BtnTapped(_ sender: Any) {
        animator.startAnimation()
    }
    
    // private
    
    private func initAnimate() {
        animator = UIViewPropertyAnimator(duration: 3.0, curve: .linear, animations: {
            self.circle.center.y += 200
        })
    }
}

