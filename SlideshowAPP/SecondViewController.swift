//
//  SecondViewController.swift
//  SlideshowAPP
//
//  Created by 前田 匠 on 2017/12/03.
//  Copyright © 2017年 takumi.maeda. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBAction func BackButton(_ sender: Any) {
    }
    
    @IBOutlet weak var LargeViewImageView: UIImageView!
    var imageslide: Int = 0
    
    let imagegarally = ["img1.jpg", "img2.jpg", "img4.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        LargeViewImageView.image = UIImage(named:imagegarally[imageslide])
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
