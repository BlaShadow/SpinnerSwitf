//
//  ViewController.swift
//  TestSpinner
//
//  Created by Luis Romero on 25/5/15.
//  Copyright (c) 2015 Luis Romero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showAnimation(sender: AnyObject) {
        var loader = LoaderView(parent: self.view)
        
        var imageView = loader.render()
        
        self.view.addSubview(imageView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

