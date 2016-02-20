//
//  CustomTextFieldWithButton.swift
//  stayconnected
//
//  Created by TCS on 21/02/16.
//  Copyright © 2016 Sowmia. All rights reserved.
//

import UIKit

@IBDesignable class CustomTextFieldWithButton: UIView {

    
    var view: UIView!
    @IBOutlet var textView: UITextField?
    @IBOutlet var btnView: UIButton?
    
   required override init(frame: CGRect) {
       super.init(frame: frame)
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    func xibSetup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "wtjs_sc_login_edittext", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }
    
    func setLeftSideImage(leftImage: UIImageView){
        print("setLeftSideImage view.....%s", textView)

        textView?.leftViewMode = UITextFieldViewMode.Always
        textView?.leftView = leftImage
    }
        
    func setRightSideImage(rightImage: UIImageView){
        print("setRightSideImage view.....%s", textView)

        textView?.rightViewMode = UITextFieldViewMode.Always
        textView?.rightView = rightImage
    }
        
    func setButtonImage(btnImage: UIImage){
        print("setButtonImage view.....%s", btnView)

        btnView?.setImage(btnImage, forState: UIControlState.Normal)
    }
    
}
