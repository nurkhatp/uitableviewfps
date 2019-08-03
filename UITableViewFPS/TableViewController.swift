//
//  ViewController.swift
//  UITableViewFPS
//
//  Created by Nurkhat Pazylov on 8/3/19.
//  Copyright © 2019 UITableView. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    enum Sections {
        case oneDigit
        case twoDigits
        case threeDigits
    }
    
    // MARK: - Properties
    let sections: [Sections] = [
        .oneDigit,
        .twoDigits,
        .threeDigits
    ]
    
    lazy var oneDigitRows: [Int] = {
       return (0..<100).map { _ in .random(in: 0..<9) }
    }()
    
    lazy var twoDigitRows: [Int] = {
        return (0..<100).map { _ in .random(in: 10..<99) }
    }()
    
    lazy var threeDigitRows: [Int] = {
        return (0..<100).map { _ in .random(in: 100..<999) }
    }()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib.init(nibName: "Cell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cell")
    }
}

// MARK: UITableViewDataSource
extension TableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch sections[section] {
        case .oneDigit:
            return oneDigitRows.count
        case .twoDigits:
            return twoDigitRows.count
        case .threeDigits:
            return threeDigitRows.count
        }
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! Cell
        return cell
    }
}

// MARK: UITableViewDelegate
extension TableViewController {
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        switch sections[indexPath.section] {
        case .oneDigit:
            guard let cell = cell as? Cell else { return }
            cell.configure(with: oneDigitRows[indexPath.row])
        case .twoDigits:
            guard let cell = cell as? Cell else { return }
            cell.configure(with: twoDigitRows[indexPath.row])
        case .threeDigits:
            guard let cell = cell as? Cell else { return }
            cell.configure(with: threeDigitRows[indexPath.row])
        }
    }
}
