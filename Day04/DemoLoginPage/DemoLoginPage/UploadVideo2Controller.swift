//
//  UploadVideoController.swift
//  DemoLoginPage


import UIKit
import VGPlayer
import SnapKit
import Material

import MobileCoreServices
import AssetsLibrary
import AVKit
import AVFoundation

class UploadVideo2Controller: UIViewController {
    
    var frostedView: UIToolbar = UIToolbar()
    
    // 标题 视频 视频大小  进度条 提醒文字 上传按钮
    let name_label = UILabel()
    lazy var player = VGPlayer()
    let video_size_label = UILabel()
    let notice_label = UILabel()

    let upload_btn = Button()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "上传视频 2/2"
        
        self.navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedStringKey.foregroundColor: UIColor.white
        ]
        self.navigationController?.navigationBar.setBackgroundImage(createImageWithColor(UIColor(red: 0.98, green: 0.42, blue: 0.61, alpha: 1.00)), for: .default)

        initViews()
    }
    
    func initViews(){
        self.view.backgroundColor = UIColor.white
        self.view.addSubview(name_label)
        self.view.addSubview(player.displayView)
        self.view.addSubview(video_size_label)
        self.view.addSubview(notice_label)
        self.view.addSubview(upload_btn)
        
    
        name_label.text = "视频名称： 视频"
        
        
        self.player.replaceVideo(URL(string: "http://imgcdn.nowapp.cn/o_1celbtksdoh614km1oou1rvac8h7.mp4")!)
        self.player.displayView.titleLabel.text = ""
        self.player.displayView.closeButton.isHidden = true
        self.player.displayView.topView.isHidden = true
    
        video_size_label.text = "视频大小： 10.22M"
        
        notice_label.text = "提醒：提醒提醒提醒提醒提醒提醒提醒提醒提醒提醒提醒提醒提醒提醒提醒提醒提醒提醒提醒提醒提醒提醒提醒提醒提醒提醒"
        
        upload_btn.setTitle("开始上传", for: UIControlState())
        upload_btn.backgroundColor = UIColor(red: 0.98, green: 0.42, blue: 0.61, alpha: 1.00)
        
        
        
        name_label.snp.makeConstraints { (make) in
            make.left.equalTo(self.view).offset(20)
            make.right.equalTo(self.view).offset(-20)
            make.top.equalTo(self.view).offset(20)
        }
        
        player.displayView.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(name_label.snp.bottom).offset(10)
            make.height.equalTo(self.view.snp.width).multipliedBy(9.0/16.0)
        }
        
        video_size_label.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(player.displayView.snp.bottom).offset(20)
        }
        
        
        notice_label.numberOfLines = 0;

        notice_label.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(video_size_label.snp.bottom).offset(20)
        }
        
        upload_btn.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(notice_label.snp.bottom).offset(20)
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



