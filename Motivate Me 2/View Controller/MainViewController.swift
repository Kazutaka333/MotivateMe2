//
//  MainViewController.swift
//  Motivate Me 2
//
//  Created by Kazutaka Homma on 9/21/17.
//  Copyright © 2017 Kazutaka Homma. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    private var quotes = [Quote]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: QuoteTableViewCell.cellID, bundle: nil) , forCellReuseIdentifier: QuoteTableViewCell.cellID)
        setDummyData()
        tableView.reloadData()
    }
    
    func setDummyData() {
        let quote = Quote()
        quote.text = "Time is money."
        quote.author = "Someone"
        quotes = [quote, quote, quote, quote]
    }
    
    // TODO: research what this does
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: QuoteTableViewCell.cellID) as! QuoteTableViewCell
        cell.quote = quotes[indexPath.row]
        return cell
    }

}

