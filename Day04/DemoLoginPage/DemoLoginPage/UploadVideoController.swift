//
//  UploadVideoController.swift
//  DemoLoginPage


import UIKit

class UploadVideoController: UIViewController {
    
    var frostedView: UIToolbar = UIToolbar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "上传视频"
        
        self.navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedStringKey.foregroundColor: UIColor.white
        ]
        self.navigationController?.navigationBar.setBackgroundImage(createImageWithColor(UIColor(red: 0.98, green: 0.42, blue: 0.61, alpha: 1.00)), for: .default)

        initViews()
    }
    
    func initViews(){
        self.view.backgroundColor = UIColor.white
        
    }
    
    func createImageWithColor(_ color:UIColor) -> UIImage{
        return createImageWithColor(color, size: CGSize(width: 1, height: 1))
    }
    
    
    func createImageWithColor(_ color:UIColor,size:CGSize) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContext(rect.size);
        let context = UIGraphicsGetCurrentContext();
        context?.setFillColor(color.cgColor);
        context?.fill(rect);
        
        let theImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return theImage!;
    }
    

}



