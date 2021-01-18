//
//  KTNoContentView.swift
//
//  Created by keenteam on 2020/1/15.
//

import UIKit

enum KTNoContentType : NSInteger {
    /** 无网络 */
    case NoContentTypeNetwork = 0
    /** 无订单 */
    case NoContentTypeOrder   = 1
    
}

class KTNoContentView: UIView,UIScrollViewDelegate {
    
    var type : KTNoContentType? {
        
        didSet{
            switch type {
            case .NoContentTypeNetwork:
                setImage(imgName: "nonumber", textName: "貌似没有网络")
            case .NoContentTypeOrder:
                setImage(imgName: "nonumber", textName: "暂时没有数据")
            case .none:
                break
            }
        }
    }
    
    var imageView : UIImageView!
    var topLabel : UILabel?
    var bottomLabel : UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
        
    }
    
    func setUpUI() {
        //图片
        self.backgroundColor = UIColor.white
        imageView = UIImageView()
        self.addSubview(imageView)
        //内容描述
        topLabel = UILabel()
        topLabel?.textAlignment = .center
        topLabel?.font = UIFont.systemFont(ofSize: 15)
        topLabel?.textColor = UIColor.gray
        self.addSubview(topLabel!)
        //提示点击重新加载
        bottomLabel = UILabel()
        bottomLabel?.textAlignment = .center
        bottomLabel?.font = UIFont.systemFont(ofSize: 15)
        bottomLabel?.textColor = UIColor.gray
        self.addSubview(bottomLabel!)
        //建立约束
       imageView?.snp.makeConstraints({ (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(self).offset(-100)
            make.size.equalTo(CGSize(width: 100, height: 100))
        })
        
        topLabel?.snp.makeConstraints({ (make) in
            make.top.equalTo(2)
            make.left.right.equalToSuperview()
            make.height.equalTo(20)
        })
      
        bottomLabel?.snp.makeConstraints({ (make) in
            make.top.equalTo(imageView.snp.bottom).offset(10)
            make.left.right.equalToSuperview()
            make.height.equalTo(20)
        })
        
    }
    
    func setImage(imgName:NSString , textName:NSString)  {
        
        self.imageView?.image = UIImage.init(named: imgName as String)
        self.bottomLabel?.text = textName as String
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
