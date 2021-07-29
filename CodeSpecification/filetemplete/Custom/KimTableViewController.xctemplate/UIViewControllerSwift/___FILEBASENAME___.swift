//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: GKTBaseViewController, UITableViewDelegate, UITableViewDataSource{

    //MARK: - public property
    
    //MARK: - readonly property
    lazy var tableView:UITableView = getTableView()

    
    //MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.commonSetUpViews()
        self.commonLayoutViews()

    }

    #if DEBUG
    deinit {
        print("[\(type(of: self)) deinit]")
    }
    #endif
}

//MARK: - initial Methods
fileprivate extension ___FILEBASENAMEASIDENTIFIER___ {
    func commonSetUpViews() {
        self.view.addSubview(self.tableView)
    }
    
    func commonLayoutViews() {
        self.tableView.mas_makeConstraints { (make) in
            make?.edges.equalTo()(UIEdgeInsets.zero)
        }
    }

}

//MARK: - Delegate/DataSource
//MARK: - UITableViewDelegate/UITableViewDatasource
extension ___FILEBASENAMEASIDENTIFIER___ {
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.dequeueReusableCell(withIdentifier: <#value#>, for: indexPath)
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#value#>
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        <#value#>
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }


//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        tableView.dequeueReusableHeaderFooterView(withIdentifier: <#value#>)
//    }
    
//    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        let targetCell: <#value#> = view as! <#value#>
//    }
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        <#value#>
//    }
    
    
}

//MARK: - public method
extension ___FILEBASENAMEASIDENTIFIER___ {
}

//MARK: - private method
fileprivate extension ___FILEBASENAMEASIDENTIFIER___ {
}

//MARK: - getters and setters
fileprivate extension ___FILEBASENAMEASIDENTIFIER___ {
    func getTableView() -> UITableView {
        let tableView = UITableView.init(frame: CGRect.zero, style: UITableView.Style.plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib.init(nibName: <#value#>, bundle: Bundle.main), forCellReuseIdentifier: <#value#>)

        return tableView
    }

}
