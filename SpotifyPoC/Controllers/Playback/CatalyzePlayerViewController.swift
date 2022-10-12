//
//  PlayerViewController.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 10/11/22.
//

import UIKit

class CatalyzePlayerViewController: UIViewController {
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.updateCounting()
        })
        
        title = "Player"
        view.backgroundColor = .systemBackground
        print("API Caller")
        
        

        // Do any additional setup after loading the view.
    }
    
    
    private func getPlayback(){
        print("Creating a playlist")
//        let text = "Sample Playlist"
        
        
        APICaller.shared.getPlayerState { [weak self] result in
            DispatchQueue.main.async{
                switch result {
                case .success(let model):
//                    self?.updateUI(with: model)
                    print("Success")
                case .failure(let error):
//                    self?.failedToGetProfile()
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    

    func updateCounting(){
        getPlayback()
    }

}
