//
//  SearcgViewController.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 9/21/22.
//

import UIKit

class SearchViewController: UIViewController, UISearchResultsUpdating {
    
    
    
    let searchController: UISearchController = {
        let vc = UISearchController(searchResultsController: SearchResultsViewController())
        vc.searchBar.placeholder = "Songs"
        vc.searchBar.searchBarStyle = .minimal
        vc.definesPresentationContext = true
        
        return vc
        
    }()
    
    private let collectionView: UICollectionView = UICollectionView(frame: .zero,
                                                                    collectionViewLayout: UICollectionViewCompositionalLayout(sectionProvider: { _, _ -> NSCollectionLayoutSection? in
        let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                                                    heightDimension: .absolute(1)))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(180)), subitems: [item, item])
        
        return NSCollectionLayoutSection(group:group)
    }))
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search"
        view.backgroundColor = .systemBackground
        navigationItem.searchController = searchController
        searchController.searchResultsUpdater = self
//        view.addSubview(collectionView)
//        collectionView.register(UICollectionViewCell.self,
//        forCellWithReuseIdentifier: "cell")
//        collectionView.delegate = self
//        collectionView.dataSource = self
//        collectionView.backgroundColor = .systemBackground
        // Do any additional setup after loading the view.
    }
    
    private func searchAPI(){
        let query = "Blinding Lights"
        APICaller.shared.searchRandom()
//        APICaller.shared.search(with: query){ success in
//            if success{
//                
//            }
//        }
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let resultsController = searchController.searchResultsController as? SearchResultsViewController,
              let query = searchController.searchBar.text,
              !query.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        print(query)
        
        searchAPI()
        //perform search
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

//extension SearchViewControllerL UICollectionViewDelegate, UICollectionViewDataSource {
//
//}
