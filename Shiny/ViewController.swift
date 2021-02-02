//
//  ViewController.swift
//  Shiny
//
//  Created by Paul Griffin on 2021-02-02.
//

import UIKit
import StoreKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var purchaseOptionList = ["Consumable", "non-consumable", "auto renewable sub", "non-renewable sub"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PurchaseCell.identifier, for: indexPath)
        guard let purchaseCell = cell as? PurchaseCell else { return UITableViewCell() }
        purchaseCell.setup(title: purchaseOptionList[indexPath.row])
        purchaseCell.selectionStyle = .none
        return purchaseCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return purchaseOptionList.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

