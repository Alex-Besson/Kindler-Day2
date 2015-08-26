//
//  CardViewController.swift
//  Kindler
//
//  Created by Alexander Besson on 2015-08-24.
//  Copyright (c) 2015 Alexander Besson. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
         //   view.layer.cornerRadius = 5
         //   view.clipsToBounds = true
        
        
        
    }
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        view.layer.cornerRadius = 5.0
//    }
    

    @IBAction func actPanGesture(sender: UIPanGestureRecognizer) {
        
        switch sender.state {
        case UIGestureRecognizerState.Began:
            print("Touch initiated")
        case UIGestureRecognizerState.Ended:
            print("Touch ended")
            
            view.center = CGPoint(x: self.view.bounds.width / 2, y: self.view.bounds.height / 2)
            
        case UIGestureRecognizerState.Failed:
            print("Touch failed")
        default:
            
            //self.view.layoutIfNeeded()
            // it works
            
            let animation = sender.translationInView(self.view)
            if let view = sender.view {
                view.center = CGPoint(x: view.center.x + animation.x, y: view.center.y + animation.y)
            }
            sender.setTranslation(CGPointZero, inView: self.view)
                
                //self.view.layoutIfNeeded()
            
            var transV = sender.translationInView(view)
            print("All is well. X: \(transV)")
        }
        
        print("It worked")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
