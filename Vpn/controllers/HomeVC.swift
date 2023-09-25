//
//  ViewController.swift
//  Vpn
//
//  Created by Tipu on 12/10/22.
//

import UIKit
struct selection {
    var fullname: String
}
class HomeVC: UIViewController {

    @IBOutlet weak var countryNameLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let a:String? = WIUserDefaultManager.get(key: .selectedTrail)
       
    }
    override func viewDidAppear(_ animated: Bool) {
        let name:String? = WIUserDefaultManager.get(key: .activityLevel)
        if name == nil{
            countryNameLbl.text = "AUTO"
        }
        else{
            countryNameLbl.text = name
        }
    }
    @IBAction func countrylogo(_ sender: UIBarButtonItem) {
        let sb = UIStoryboard(name: "Main", bundle: .main)
        let vc: CountrySelectionVCViewController  = sb.instantiateViewController(withIdentifier: "CountrySelectionVCViewController") as! CountrySelectionVCViewController
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - AddDelegate
extension HomeVC: SelectDelegate {
    func addSelection(Selection: String) {
        WIUserDefaultManager.save(key: .activityLevel, value: Selection)
    }
}

