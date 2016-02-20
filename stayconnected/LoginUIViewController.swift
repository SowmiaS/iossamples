//
//  LoginUIViewController.swift
//  stayconnected
//
//  Created by TCS on 20/02/16.
//  Copyright © 2016 Sowmia. All rights reserved.
//

import Foundation
import UIKit

class LoginUIViewController: UIViewController {
    
    @IBOutlet var userName:CustomTextFieldWithButton?
    @IBOutlet var password:CustomTextFieldWithButton?

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("init coder...")
        initialiseView()
    }
    
    required override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: "", bundle: nibBundleOrNil)
        print("init nib...")

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load....")
        initialiseView()
    }
    
    func initialiseView(){
        print("initialise view.....")
        let addNewUserImg: UIImage = UIImage(named: "addnewuser")!
        let userImg: UIImage = UIImage(named: "username")!
        let userImgView: UIImageView = UIImageView(image: userImg)
        let pwdImg: UIImage = UIImage(named: "password")!
        let pwdLockImg: UIImage = UIImage(named: "password")!
        let passwordLockImgView: UIImageView = UIImageView(image: pwdLockImg)
        print("username view.....%s",userName)
        print("password view.....%s", password)

        userName?.setButtonImage(addNewUserImg)
        userName?.setLeftSideImage(userImgView)
        password?.setButtonImage(pwdImg)
        password?.setLeftSideImage(passwordLockImgView)

    }
}
