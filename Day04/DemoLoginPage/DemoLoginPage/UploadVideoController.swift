//
//  UploadVideoController.swift
//  DemoLoginPage


import UIKit
import SnapKit
import Material

class UploadVideoController: UIViewController {
    
    var frostedView: UIToolbar = UIToolbar()
    let name_input = TextField()
    let next_btn = Button()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "上传视频 1/2"
        
        self.navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedStringKey.foregroundColor: UIColor.white
        ]
        self.navigationController?.navigationBar.setBackgroundImage(createImageWithColor(UIColor(red: 0.98, green: 0.42, blue: 0.61, alpha: 1.00)), for: .default)

        initViews()
    }
    
    func initViews(){
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(name_input)
        self.view.addSubview(next_btn)
        
        name_input.placeholder = "请输入视频名称"
        next_btn.setTitle("选择视频", for: UIControlState())
        next_btn.backgroundColor = UIColor(red: 0.98, green: 0.42, blue: 0.61, alpha: 1.00)
        
        name_input.snp.makeConstraints { (make) in
            make.left.equalTo(self.view).offset(20)
            make.right.equalTo(self.view).offset(-20)
            make.top.equalTo(self.view).offset(80)
        }
        
        next_btn.snp.makeConstraints { (make) in
            make.left.equalTo(self.view).offset(20)
            make.right.equalTo(self.view).offset(-20)
            make.height.equalTo(40)
            make.top.equalTo(name_input.snp.bottom).offset(30)
        }
        
        
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



