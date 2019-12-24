//
//  ViewController.swift
//  HorizontalScrollViiew
//
//  Created by ByungHoon Ann on 2019/12/24.
//  Copyright © 2019 ByungHoon Ann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var images = ["냥1.jpeg","냥2.jpeg","냥3.jpeg","냥4.jpeg"]
        
        for i in 0..<images.count {
            let imageView = UIImageView()
            imageView.image = UIImage(named: images[i])
            imageView.contentMode = .scaleToFill
            let xPosition = self.view.frame.width * CGFloat(i)
            
            imageView.frame = CGRect(x: xPosition, y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.contentSize.width = view.frame.width * CGFloat(1 + i)
            
            scrollView.addSubview(imageView)
        }
        
        
    }


}

