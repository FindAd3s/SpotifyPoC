//
//  RecommendationViewController.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 10/1/22.
//

import UIKit

class RandomRecommendationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Get Random Recommendations"
        view.backgroundColor = .systemBackground
        print("API Caller")
        
        getReco()

        // Do any additional setup after loading the view.
    }
    
    /// Temporary Placement
    private func getReco(){
        
        APICaller.shared.getRandomRecommendations() { result in
            DispatchQueue.main.async{
                switch result {
                case .success(_):
                    print("success")
                    // API Call to proceed to get recommendations
                    break
                case .failure(let error):
                    print(error.localizedDescription)
                    break
                }
            }
        }
    }
}
