//
//  CountrySelectionVCViewController.swift
//  Vpn
//
//  Created by Tipu on 13/10/22.
//

import UIKit
protocol SelectDelegate {
    func addSelection(Selection: String)
}
class CountrySelectionVCViewController: UIViewController {
    var delegate: SelectDelegate?
    @IBOutlet weak var table: UITableView!
    let array = ["AUTO","bd","au","nz","sri","eng","pak","afg","sau","wi","can","zim","ind","spn","bra","arg"]
    var selected = false
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }
    
    @IBAction func BackbuttonAction(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension CountrySelectionVCViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! locationCell
        var amount: String? = WIUserDefaultManager.get(key: .activityLevel)
        if amount == nil{
            amount = "AUTO"
        }
        if array[indexPath.row] == amount {
            cell.backview.backgroundColor = UIColor.green
            cell.countryImage.image = UIImage(named:"demo")!
        }
        
        cell.countryName.text = array[indexPath.row]
        cell.backview.layer.cornerRadius = 10
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.blue
            cell.selectedBackgroundView = backgroundView
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath)as? locationCell {
            cell.backview.backgroundColor = UIColor.green
            cell.countryImage.image = UIImage(named:"demo")!
                }
        
        let selectedTrail = array[indexPath.row]
        delegate?.addSelection(Selection: selectedTrail)
        navigationController?.popViewController(animated: true)
    }
}
