//
//  ViewController.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 9/20/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        print("Access Token: \(UserDefaults.standard.string(forKey: "access_token")!)")
        
        title = "Home"
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"),
                                                            style: .done, target: self,
                                                            action: #selector(didTapSettings))
        print("Home VC")
        // fetchData()
        // Do any additional setup after loading the view.
        
    }
    
    private func fetchData(){
        print("Fetching new releases")
        APICaller.shared.getNewReleases { result in
            switch result {
            case .success(let model): break
            case .failure(let error): break
            }
        }
    }
    
    
    
    @objc func didTapSettings() {
        
        let vc = SettingsViewController()
        vc.title = "Profile"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
        
    }


}

