//
//  SongInputViewController.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 10/1/22.
//

import UIKit

class SongInputViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Song Input"
        view.backgroundColor = .systemBackground
        print("API Caller")
        
        songSearch()
//        artistProperties()

        // Do any additional setup after loading the view.
    }
    
    /// Temporary Placement
    
    private func songSearch(){
        
        let query = "Blinding Lights"
        
//        songName = songName.replacingOccurrences(of: " ", with: "%20", options: .literal, range: nil)
//        artistName = artistName.replacingOccurrences(of: " ", with: "%20", options: .literal, range: nil)
        
        APICaller.shared.searchSong(query: query){ result in
            switch result {
            case .success(let model):
                print("success")
                break
            case .failure(let error):
                print("failure")
                break
            }
        }
        
    }
    
    private func artistProperties(){
        
//        APICaller.shared.searchSong(song: songName, artist: artistName){ result in
//            switch result {
//            case .success(let model):
//                print("success")
//                break
//            case .failure(let error):
//                print("failure")
//                break
//            }
//        }
        
    }
        
        
        
        
        
//        APICaller.songProperties(with: song, artist){ success in
//            if success {
//                print("Found Song")
//            }
//            else {
//                print("Unable to Perform Task")
//            }
//        }
        
    }
    
    
//    private func createPlaylist(){
//        print("Creating a playlist")
//        let text = "Sample Playlist"
//
//        APICaller.shared.createPlaylist(with: text) { success in
//            if success {
//                print("Created Playlist")
//            }
//            else {
//                print("Playlist creation failed")
//            }
//        }
//    }
//}
