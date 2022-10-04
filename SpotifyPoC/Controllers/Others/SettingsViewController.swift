//
//  SettingsViewController.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 9/21/22.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    private var sections = [Section]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureModels()
        title = "Settings"
        view.backgroundColor = .systemBackground
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    private func configureModels(){
        sections.append(Section(title: "Profile", options: [Option(title: "View Your Profile", handler: {[weak self] in
            DispatchQueue.main.async {
                self?.viewProfile()
            }
        })]))
        
        sections.append(Section(title: "Catalyze Proof of Concept", options: [Option(title: "Input Song", handler: {[weak self] in
            DispatchQueue.main.async {
                self?.viewSongInput()
                
            }
        }), Option(title: "Song Search", handler: {[weak self] in
            DispatchQueue.main.async {
                self?.viewSongSearch()
                
            }
        }), Option(title: "Get Recommendation", handler: {[weak self] in
            DispatchQueue.main.async {
                self?.viewRecommendations()
                
            }
        }), Option(title: "Create Playlist", handler: {[weak self] in
            DispatchQueue.main.async {
                self?.viewCreatePlaylist()
            }
        })]))
        
        sections.append(Section(title: "Account", options: [Option(title: "Sign Out", handler: {[weak self] in
            DispatchQueue.main.async {
                
            }
        })]))
    }
    
    private func viewSongInput(){
        let vc = SongInputViewController()
        vc.title = "Song Input"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func viewSongSearch(){
        let vc = CatalyzeSearchViewController()
        vc.title = "Song Input"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func viewRecommendations(){
        let vc = RecommendationViewController()
        vc.title = "Get Recommendation"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func viewCreatePlaylist(){
        let vc = CreatePlaylistViewController()
        vc.title = "Create Playlist"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func viewCatalyze(){
        let vc = CatalyzeViewController()
        vc.title = "Catalyze"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func viewProfile(){
        let vc = ProfileViewController()
        vc.title = "Profile"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func signOutTapped() {
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    // MARK: - TableView
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = sections[indexPath.section].options[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:  indexPath)
        cell.textLabel?.text = model.title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        ///call handler for cell
        let model = sections[indexPath.section].options[indexPath.row]
        model.handler()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let model = sections[section]
        return model.title
    }


}