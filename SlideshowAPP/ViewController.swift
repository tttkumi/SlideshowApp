//
//  ViewController.swift
//  SlideshowAPP
//
//  Created by 前田 匠 on 2017/11/27.
//  Copyright © 2017年 takumi.maeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ImageView1: UIImageView!
    
    @IBOutlet weak var StartPausebutton: UIButton!
    
    @IBAction func Tapaction(_ sender: Any) {
        
        performSegue(withIdentifier: "gotodetail", sender: nil)
    }
    
    
    let imagegarally = ["img1.jpg", "img2.jpg", "img4.jpg"]
    var imageslide: Int = 0
    var timer: Timer!
    var count = 0
    var running: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ImageView1.image = UIImage(named: "img1.jpg")
        
        ImageView1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ViewController.imageViewTapped(_:))))
        
        
    }
    func imageViewTapped(_ sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "gotodetail", sender: nil)
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func slideimage(timer: Timer){
        
        imageslide = imageslide + 1
        
        if imageslide > 2{
            imageslide = 0
        }
        
        
        ImageView1.image = UIImage(named: imagegarally [imageslide] )
    }
    
    
    
    @IBAction func StartPausebutton(_ sender: Any) {
        
        
        
        if !running {
            self.timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector
                (slideimage), userInfo: nil, repeats: true)
            running = true
            
            StartPausebutton.setTitle("停止", for: .normal)
            
        }else{
            timer.invalidate()
            running = false
            
            StartPausebutton.setTitle("再生", for: .normal)
            
            
        }
    }
    
    @IBAction func GobackButton(_ sender: Any) {
        
        if running{
            self.timer.invalidate()
        }
        
        imageslide = imageslide - 1
        if imageslide < 0{
            imageslide = 2
        }
        
        ImageView1.image = UIImage(named: imagegarally [imageslide] )
    }
    
    
    
    @IBAction func GotoNextbutton(_ sender: Any) {
        
        if running{
            self.timer.invalidate()
        }
        
        
        imageslide = imageslide + 1
        if imageslide > 2{
            imageslide = 0
        }
        
        ImageView1.image = UIImage(named: imagegarally [imageslide] )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?){
        let imageslideViewController:SecondViewController = segue.destination as! SecondViewController
        
        imageslideViewController.imageslide = imageslide
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    
}
