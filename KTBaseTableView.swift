//
//  KTBaseTableView.swift
//
//  Created by keenteam on 2020/1/15.
//

import UIKit

class KTBaseTableView: UITableView {
    
    var noContentView : KTNoContentView?
    
    
    func showEmptyViewWithType(emptyViewType: NSInteger) {
        
        if (noContentView != nil) {
            noContentView?.removeFromSuperview()
            noContentView = nil
        }
        
        noContentView = KTNoContentView.init(frame: self.bounds)
        self.addSubview(noContentView!)
        noContentView?.type = KTNoContentType(rawValue: emptyViewType)!
        
    }
    
    func removeEmptyView() {
        noContentView?.removeFromSuperview()
        noContentView = nil
    }
 

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
