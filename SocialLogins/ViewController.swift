//
//  ViewController.swift
//  SocialLogins
//
//  Created by MAC OS 17 on 26/04/22.
//

import UIKit




class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
                                                     for: indexPath)
            cell.textLabel?.text = self.arr[indexPath.row]
            return cell
        
    }
    
    var arr = ["Google","Facebook","AppleId"]

    @IBOutlet weak var UItableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        UItableView.dataSource = self
        UItableView.delegate = self
        // Do any additional setup after loading the view.
    }


}

