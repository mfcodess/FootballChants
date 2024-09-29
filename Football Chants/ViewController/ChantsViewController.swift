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
        tableView.register(TeamTableViewCell.self, forCellReuseIdentifier: TeamTableViewCell.cellId)
        
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
        
        tableVieww.dataSource = self
        self.view.addSubview(tableVieww)
        
        
        
        NSLayoutConstraint.activate([
            tableVieww.topAnchor.constraint(equalTo: self.view.topAnchor),
            tableVieww.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            tableVieww.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            tableVieww.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            
        ])
    }
}

extension ChantsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableVieww.dequeueReusableCell(withIdentifier: TeamTableViewCell.cellId, for: indexPath) as! TeamTableViewCell
        cell.configure()
        
        
        return cell
    }
}
