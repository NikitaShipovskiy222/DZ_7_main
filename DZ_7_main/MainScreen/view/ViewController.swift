//
//  ViewController.swift
//  DZ_7_main
//
//  Created by Nikita Shipovskiy on 17/04/2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    private lazy var item = Item.mockData()
    
    private lazy var tabel: UITableView = {
        $0.register(MainScreenTableViewCell.self, forCellReuseIdentifier: "item")
        $0.dataSource = self
        $0.delegate = self
        $0.separatorStyle = .none
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UITableView())

    //MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tabel)
        
        NSLayoutConstraint.activate([
            tabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 0),
            tabel.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: 0),
            tabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        
        ])
        
    }


}

//MARK: - DataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        item.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let tabelCell = tabel.dequeueReusableCell(withIdentifier: "item", for: indexPath) as? MainScreenTableViewCell else {return UITableViewCell()}
        tabelCell.selectionStyle = .none
        tabelCell.SetupTabel(item: item[indexPath.row])
        return tabelCell
    }
    
    
}

//MARK: - Delegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        view.frame.width + 50
    }
}
