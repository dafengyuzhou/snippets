//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: WMPageController {

    //MARK: - public property
    
    //MARK: - readonly property
    let menuViewHeight:CGFloat = 44.0

    //MARK: - life cycle
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.titleSizeNormal = 17
        self.titleSizeSelected = 19
        self.progressHeight = 3
        self.progressWidth = 14
        self.progressViewCornerRadius = 1.5
        self.titleFontName = "PingFangSC-Medium"
        self.menuViewStyle = WMMenuViewStyle.line
        self.progressViewIsNaughty = true
        self.titleColorSelected = GKTColors.color_353535()
        self.titleColorNormal = UIColor.init(hexString: "a5a5a5")
        self.progressColor = GKTColors.color_fa8919()
//        self.menuViewLayoutMode = WMMenuViewLayoutMode.left
        self.progressViewBottomSpace = 3
        self.scrollEnable = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.gk_navigationItem.title = ""
        self.createBackBarButtonItem()
    }

    

    #if DEBUG
    deinit {
        print("[\(type(of: self)) deinit]")
    }
    #endif
}

//MARK: - initial Methods
fileprivate extension ___FILEBASENAMEASIDENTIFIER___ {
}

//MARK: - Delegate/DataSource
fileprivate extension ___FILEBASENAMEASIDENTIFIER___ {
    
    override func numbersOfChildControllers(in pageController: WMPageController) -> Int {
        return <#value #>
    }
    
    override func pageController(_ pageController: WMPageController, titleAt index: Int) -> String {
        return <#value #>
    }
    
    override func pageController(_ pageController: WMPageController, viewControllerAt index: Int) -> UIViewController {
        return <#value #>
    }
    
    
    // menuview frame
    override func pageController(_ pageController: WMPageController, preferredFrameFor menuView: WMMenuView) -> CGRect {
        return CGRect(x: 0, y: 0, width: self.view.width, height: menuViewHeight)
    }
    // content frame
    override func pageController(_ pageController: WMPageController, preferredFrameForContentView contentView: WMScrollView) -> CGRect {
        return CGRect(x: 0, y: gk_navigationBar.bottom, width: self.view.width, height: self.view.height-menuViewHeight-gk_navigationBar.bottom)
    }
    
}

//MARK: - public method
extension ___FILEBASENAMEASIDENTIFIER___ {
}

//MARK: - private method
fileprivate extension ___FILEBASENAMEASIDENTIFIER___ {
}

//MARK: - getters and setters
fileprivate extension ___FILEBASENAMEASIDENTIFIER___ {
    
}
