//
//  CameraViewController.swift
//  SwiftCamera
//
//  Created by Vinod Vishwakarma on 18/01/16.
//  Copyright © 2016 Vinod Vishwakarma. All rights reserved.
//

import UIKit
import AVFoundation

class CameraViewController: UIViewController {

    var cameraView: CameraSessionView!
    let captureSession = AVCaptureSession()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
//        //let viewLayer : CALayer = self.view.layer
//        previewLayer?.frame = self.view.frame
//        self.view.layer.addSublayer(previewLayer!)
        cameraLauncher()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBarHidden = true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    
    func cameraLauncher() -> Void {
    
        //Set white status bar
        self.setNeedsStatusBarAppearanceUpdate()
        //Instantiate the camera view & assign its frame
        self.cameraView = CameraSessionView(frame: self.view.frame)
        //Set the camera view's delegate and add it as a subview
        self.cameraView.delegate = self
        //Apply animation effect to present the camera view
        let applicationLoadViewIn: CATransition = CATransition()
        applicationLoadViewIn.duration = 0.6
        applicationLoadViewIn.type = kCATransitionReveal
        applicationLoadViewIn.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
        self.view.addSubview(cameraView)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
}

extension CameraViewController: CACameraSessionDelegate {

    func didCaptureImage(image: UIImage!) {
        
    }
    
    func didCaptureImageWithData(imageData: NSData!) {
        
    }
    
    func image(image: UIImage, didFinishSavingWithError: NSError, contextInfo:UnsafePointer<Void>)       {
        print(contextInfo)
    }
}
