# KTTableView-Swift - 无数据无网络占位图

## <a id="KTTableView-Swift TableView配置"></a> 
```
    lazy var tableView: KTBaseTableView = {
        
        let tableV = KTBaseTableView.init(frame: CGRect(x: 0, y: 0, width: kWidth, height: kHeight-kBottomToolBarHeight), style: .grouped)
        tableV.register(AccountsReceiveListCell.self, forCellReuseIdentifier: AccountsReceiveListCellIdentify)
        tableV.backgroundColor = bg_color
        tableV.delegate = self
        tableV.dataSource = self
        tableV.showsVerticalScrollIndicator = false
        tableV.separatorStyle = .none
        return tableV
    }()
```
## <a id="KTTableView-Swift网络请求"></a> 
``` 
    （网络请求返回数据）
     if response.code == 20000 {
        if let data = response.data {
          if data.count>0 {
             let dataArr = data["data"] as! [[String: AnyObject]]
             if dataArr.count>0 {
                self.tableView.removeEmptyView()
                  （处理网络请求返回数据）
                   }else{
                   （无数据处理）
                    self.tableView.showEmptyViewWithType(emptyViewType: KTNoContentType.NoContentTypeOrder.rawValue)
                    }
                 }
              }
           }
          DispatchQueue.main.async {
            self.tableView.reloadData()
          }
       } failture: { (error) in
      （无网络处理）
       self.tableView.showEmptyViewWithType(emptyViewType: KTNoContentType.NoContentTypeNetwork.rawValue)
   }
 
``` 

## 效果图

<img src="http://qjyvam1s5.hd-bkt.clouddn.com/Simulator%20Screen%20Shot%20-%20iPhone%2012%20-%202020-11-18%20at%2009.09.43.png" width="270" height="480">
<img src="http://qjyvam1s5.hd-bkt.clouddn.com/Simulator%20Screen%20Shot%20-%20iPhone%2012%20-%202020-11-18%20at%2009.10.05.png" width="270" height="480"> <img src="http://qjyvam1s5.hd-bkt.clouddn.com/Simulator%20Screen%20Shot%20-%20iPhone%2012%20-%202020-11-18%20at%2009.09.51.png" width="270" height="480">


## <a id="更多"></a>  更多 - More

- 如果您发现了bug请尽可能详细地描述系统版本、手机型号和复现步骤等信息 提一个issue.

- 如果您有什么好的建议也可以提issue,大家一起讨论一起学习进步...

- 具体代码请下载项目  如果觉得喜欢的能给一颗小星星么!  ✨ 

- [有兴趣可以加下创建的QQ群:812144991(因为工作很忙所以可能问问题没人回答!!)](//shang.qq.com/wpa/qunwpa?idkey=ebd8d6809c83b4d6b4a18b688621cb73ded0cce092b4d1f734e071a58dd37c26) <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=294005139&site=qq&menu=yes"><img border="0" src="" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
- The MIT License (MIT)                  Copyright (c) 2018 KEENTEAM
