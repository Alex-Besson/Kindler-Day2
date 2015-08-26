//
//  RoundedImageView.swift
//  Kindler
//
//  Created by Alexander Besson on 2015-08-24.
//  Copyright (c) 2015 Alexander Besson. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {
    var someNumber:Int = 34
    override func awakeFromNib() {
       
        self.layer.cornerRadius = 20.0
        
        self.clipsToBounds = true
       
        
        //

        
    }
    override func layoutSubviews() {
//        self.image = UIImage(named: "SF.jpg")
//         self.layer.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
         //self.image = UIImage(named: "dog.jpg")
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */


}
