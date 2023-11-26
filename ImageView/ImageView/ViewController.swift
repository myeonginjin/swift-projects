//
//  ViewController.swift
//  ImageView
//
//  Created by 진명인 on 2023/11/26.
//

import UIKit

class ViewController: UIViewController {
    
    var isZoom = false
    var ImgOn: UIImage?
    var ImgOff: UIImage?
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ImgOn = UIImage(named: "lamp_on.png")
        ImgOff = UIImage(named: "lamp_off.png")
        
        imageView.image = ImgOn
        
        
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale : CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if (isZoom){
            newWidth = imageView.frame.width/scale
            newHeight = imageView.frame.height/scale
            btnResize.setTitle("확대", for: .normal)
        }
        else {
            newWidth = imageView.frame.width*scale
            newHeight = imageView.frame.height*scale
            btnResize.setTitle("축소", for: .normal)
        }
        imageView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn{
            imageView.image = ImgOn;
        }
        else{
            imageView.image = ImgOff;
        }
    }
    
}

