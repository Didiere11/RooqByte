//
//  ViewController.swift
//  RooqByte
//
//  Created by didiere on 11/11/19.
//  Copyright © 2019 didiere. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var name = ["viaje1","viaje2","viaje3","viaje4","viaje5","viaje6","viaje7","viaje8"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell
        cell?.lbl.text = name[indexPath.row]
        cell?.img.image = UIImage(named: name[indexPath.row])
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        vc?.image = UIImage(named: name[indexPath.row])!;
        vc?.name = name[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
