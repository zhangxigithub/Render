//
//  ViewController.swift
//  Render
//
//  Created by 张玺 on 6/22/16.
//  Copyright © 2016 me.zhangxi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let view = UIView.xib("View")
        {
            view.renderLabels([1:"lable 1",2:"label 2",3:"label 3"])
            
            view.lable(4)?.text = "label 4"
            view.imageView(5)?.image = UIImage(named:"bird")
            view.button(6)?.setTitle("button 6", forState: .Normal)
            view.slider(7)?.value = 80
            
            
            view.frame = CGRectMake(0, 100, self.view.frame.size.width, 300)
            self.view.addSubview(view)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

