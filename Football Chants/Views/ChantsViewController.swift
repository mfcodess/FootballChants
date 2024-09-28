//
//  ChantsViewController.swift
//  Football Chants
//
//  Created by Max on 28.09.2024.
//

import UIKit

class ChantsViewController: UIViewController {
    
    //MARK: UI
    
    private lazy var tableVieww: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44
        tableView.separatorStyle = .none
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        return tableView
    }()

    override func loadView() {
        super.loadView()
        setup()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
    }
}

private extension ChantsViewController {
    func setup() {
        view.addSubview(tableVieww)
        
        
        tableVieww.dataSource = self
        NSLayoutConstraint.activate([
            tableVieww.topAnchor.constraint(equalTo: view.topAnchor),
            tableVieww.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableVieww.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableVieww.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
    }
}


extension ChantsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 3
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableVieww.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        switch indexPath.row {
        case 0:
            cell.backgroundColor = .red
        case 1:
            cell.backgroundColor = .systemGray
        case 2:
            cell.backgroundColor = .purple
        default:
            break
        }
        
        return cell
    }
    
   
    
    
}
