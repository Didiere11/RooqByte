//
//  DetailViewController.swift
//  RooqByte
//
//  Created by didiere on 11/12/19.
//  Copyright © 2019 didiere. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    
    var image = UIImage()
    var name = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl.text = "Has seleccionado a \(name) para consultar mas informacion"
        img.image = image
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func onClickenviar(_ sender: Any) {
    }
}
