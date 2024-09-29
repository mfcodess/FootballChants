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
    
    private lazy var teamViewModel = TeamViewModel()
    private lazy var audioManagerViewModel = AudioManagerViewModel()
    
    override func loadView() {
        super.loadView()
        setup()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
    }
}

private extension ChantsViewController {
    func setup() {
        
        tableVieww.dataSource = self
        self.view.addSubview(tableVieww)
        
        self.navigationController?.navigationBar.topItem?.title = "Football Chants"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
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
        return teamViewModel.teams.count
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let team = teamViewModel.teams[indexPath.row]
        let cell = tableVieww.dequeueReusableCell(withIdentifier: TeamTableViewCell.cellId, for: indexPath) as! TeamTableViewCell
        cell.configure(with: team, delegate: self)
        
        
        return cell
    }
}

extension ChantsViewController: TeamTableViewCellDelegate {
    func didTapPlayBack(for team: Team) {
        audioManagerViewModel.playback(team)
        teamViewModel.toggleModel(for: team)
        tableVieww.reloadData()
    }
}

