//
//  ViewController.swift
//  SwiftCamera
//
//  Created by Vinod Vishwakarma on 18/01/16.
//  Copyright © 2016 Vinod Vishwakarma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cameraAction(sender: AnyObject) {
        let vc: CameraViewController  = self.storyboard?.instantiateViewControllerWithIdentifier("CameraViewController") as! CameraViewController
        let navCon  =  UINavigationController.init(rootViewController: vc)
//        self.navigationController?.pushViewController(vc, animated: true)
        self.presentViewController(navCon, animated: true) { () -> Void in
            
        }

    }

}

