//
//  CatalyzeViewController.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 9/30/22.
//

import UIKit

class CatalyzeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Catalyze"
        view.backgroundColor = .systemBackground
        print("API Caller")
        
        createPlaylist()

        // Do any additional setup after loading the view.
    }
    
    /// Temporary Placement
    private func createPlaylist(){
        print("Creating a playlist")
        
        APICaller.shared.createPlaylist() { success in
            if success {
                print("Created Playlist")
            }
            else {
                print("Playlist creation failed")
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
