//
//  ViewController.swift
//  Trash
//
//  Created by daniel martinez gonzalez on 4/7/17.
//  Copyright © 2017 daniel martinez gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    
    @IBOutlet weak var viewContainerTrash: UIButton!
    
    var trash :TrashView = TrashView()
    var edit : Bool = false
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        trash.frame = CGRect(x: 0, y: 0, width: viewContainerTrash.frame.width , height: viewContainerTrash.frame.height)
        
        trash.backgroundColor = UIColor.clear
        trash.isUserInteractionEnabled = false
        trash.addCloseAndShakeAnimation()
        
        viewContainerTrash.addSubview(trash)
        viewContainerTrash.addTarget(self , action: #selector(Edit_Press(_:)) , for: .touchUpInside)
        
    }

    
    func Edit_Press(_ sender : UIButton)
    {
        if edit
        {
            trash.removeOpenAnimation()
            trash.addCloseAndShakeAnimation()
            edit = false
        }
        else
        {
            trash.addOpenAnimation()
            edit = true
        }
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }


}

