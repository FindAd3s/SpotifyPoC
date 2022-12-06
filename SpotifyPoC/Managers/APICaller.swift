//
//  APICaller.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 9/21/22.
//

import Foundation

extension TimeInterval {
    var hourMinuteSecondMS: String {
        String(format:"%d:%02d:%02d.%03d", hour, minute, second, millisecond)
    }
    var minuteSecond: String {
        String(format:"%d:%02d", minute, second)
    }
    var hour: Int {
        Int((self/3600).truncatingRemainder(dividingBy: 3600))
    }
    var minute: Int {
        Int((self/60).truncatingRemainder(dividingBy: 60))
    }
    var second: Int {
        Int(truncatingRemainder(dividingBy: 60))
    }
    var millisecond: Int {
        Int((self*1000).truncatingRemainder(dividingBy: 1000))
    }
}

extension Int {
    var msToSeconds: Double { Double(self) / 1000 }
}

final class APICaller {
    static let shared = APICaller()
    
    private init(){}
    
    struct Constants{
        static let baseAPIURL = "https://api.spotify.com/v1"
    }
    
    struct CatalyzeConstants{ // Data needed for Catalyst dump
        
        /// API Call URLs
        
        static var searchURL = ""
        static var artistURL = ""
        static var getRecoURL = ""
        static var addToPlaylistURL = ""
        
        /// Song Details from search
        static var songID = ""
        static var artistID = ""
        static var songName = ""
        static var artistName = ""
        
        /// Data acquired from ArtistDetails API call
        
        static var genres = ""
        
        /// Song Recommendation Vartiables
        
        static var keySongURI = ""
        static var songURI = ""
        static var songNames = [String].self
        static var artistNames = [String].self
        
        
        /// Playlist Creation Variables
        
        static var playlistID = ""
        
    }
    
    struct PlaybackConstants{
        static var deviceID = ""
        static var playbackURL = ""
    }
    
    enum APIError: Error{
        
       case failedToGetData
        
    }
    
    public func getCurrentUserProfile(completion: @escaping (Result<UserProfile, Error>) -> Void) {
        print("Calling Request Function")
        
        createRequest(with: URL(string: Constants.baseAPIURL + "/me"), type: .GET) { baseRequest in
            
            print("Creating Task")
            let task = URLSession.shared.dataTask(with: baseRequest) { data, _,error in
                print("Task created")
                guard let data = data, error == nil else{
                    print("Failed to get data")
                    completion(.failure(APIError.failedToGetData))
                    return
                }
                do {
                    print("Extracting JSON")
//                    let result = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                    let result = try JSONDecoder().decode(UserProfile.self, from: data)
                    print(result)
                    completion(.success(result))
                    
                }
                catch{
                    completion(.failure(error))
                }
                
            }
            task.resume()
            
        }
            
    }
    
    public func getNewReleases(completion: @escaping ((Result<String, Error>)) -> Void) {
        print("Getting new releases")
        createRequest(with: URL(string: Constants.baseAPIURL + "/browse/new-releases?limit=50"), type: .GET) { request in
            let task = URLSession.shared.dataTask(with: request) { data, _, error in
                guard let data = data, error == nil else {
                    print("error")
                    completion(.failure(APIError.failedToGetData))
                    return
                }
                do {
                    print("Converting to json")
                    let releases = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                    print("success")
                    print(releases)
                }
                catch {
                    print("error")
                    completion(.failure(error))
                }
            }
            task.resume()
            
        }
    }
        
    public func getCatalyzeDetails(){
        print("\n***Search Results***")
        print("\nSong: \(CatalyzeConstants.songName)")
        print("Artist: \(CatalyzeConstants.artistName)")
        print("Playlist ID: \(CatalyzeConstants.playlistID)")
        print("Song ID: \(CatalyzeConstants.songID)")
        print("Artist ID: \(CatalyzeConstants.artistID)")
        print("Genres: \(CatalyzeConstants.genres)")
        print("Song Recommendations: ")
//        print("Songs: \(CatalyzeConstants.genres)")
        print("Song URIs: \(CatalyzeConstants.songURI)")
    }
    
    public func searchRandom(){
        print("API Caller Theoretically called")
    }
    
    public func searchSong(query: String, completion: @escaping ((Result<String, Error>)) -> Void){
        print("Getting Search Results")
        print(query)
//        print(artist)
        
        let convQuery = query.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
//        let convArtist = artist.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        
        print(convQuery!)
        
        CatalyzeConstants.searchURL = Constants.baseAPIURL + "/search?limit=1&type=track,artist&market=ES&q=\(convQuery!)"
        
        print(CatalyzeConstants.searchURL)
        
        createRequest(with: URL(string: CatalyzeConstants.searchURL), type: .GET){ request in
            
            let task = URLSession.shared.dataTask(with: request) { data, _, error in
                guard let data = data, error == nil else {
                    print("error")
                    completion(.failure(APIError.failedToGetData))
                    return
                }
                do {
                    print("Converting to json")
                    let releases = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                    print(releases)
                    let search = try JSONDecoder().decode(SearchResults.self, from: data)
                    CatalyzeConstants.artistID = search.tracks.items[0].artists[0].id /// First Result being used
                    CatalyzeConstants.songID = search.tracks.items[0].id /// First Result being used
                    CatalyzeConstants.songName = search.tracks.items[0].name
                    CatalyzeConstants.artistName = search.tracks.items[0].artists[0].name
                    CatalyzeConstants.keySongURI = search.tracks.items[0].uri
//                    var searchResults: [SearchResult] = []
//                    searchResults.append(contentOf)
                    
                    print("***Search Results***")
                    
                    for songs in (search.tracks.items){
                        
                        print("\nSong: \(songs.name)")
                        print("Artist: \(songs.artists[0].name)")
                        print("Artist ID: \(songs.album.id)")
                        print("Album Artists: \(songs.album.artists[0].name)")
                        print("Song ID: \(songs.id)")
                        print("Song URI: \(songs.uri)")
                        
                    }
                    
                    print("success")
//                    completion(.success(searchResults))
                    
                    self.getArtistDetails(){ result in
                        DispatchQueue.main.async{
                            switch result {
                            case .success(let results):
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
                catch {
                    print("error")
                    completion(.failure(error))
                }
            }
            task.resume()
        }
    }
    
    public func getArtistDetails(completion: @escaping((Result<String, Error>)) -> Void ){
        print("Getting Artist Details")
        CatalyzeConstants.artistURL = Constants.baseAPIURL + "/artists/\(CatalyzeConstants.artistID)"
        print("Artist Search URL: \(CatalyzeConstants.artistURL)")
        createRequest(with: URL(string: CatalyzeConstants.artistURL), type: .GET){ request in
            
            let task = URLSession.shared.dataTask(with: request) { data, _, error in
                guard let data = data, error == nil else {
                    print("error")
                    completion(.failure(APIError.failedToGetData))
                    return
                }
                do {
                    print("Converting to json")
                    let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                    print(json)
                    let search = try JSONDecoder().decode(ArtistInfo.self, from: data)
                    print(search.genres)
                    let array = search.genres
                    var genre = []
                    var temp = []
                    
                    print(array.count)
                    if array.count > 2{
                        for genres in 0...2{
                            genre.append(search.genres[genres])
                        }
                        temp = genre
                    }
                    else{
                        temp = array
                    }
                    
                    CatalyzeConstants.genres = NSArray(array:temp).componentsJoined(by: ",")
                    CatalyzeConstants.genres = CatalyzeConstants.genres.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                    
                    
                    self.getCatalyzeDetails()
                }
                catch {
                    print("error")
                    completion(.failure(error))
                }
            }
            task.resume()
        }
    }
    
    public func getRecommendations(completion: @escaping ((Result<String, Error>)) -> Void) {
        
        print("Getting Recommendations")
        CatalyzeConstants.getRecoURL = Constants.baseAPIURL + "/recommendations?limit=49&market=ES&seed_artists=\(CatalyzeConstants.artistID)&seed_genres=\(CatalyzeConstants.genres)&seed_tracks=\(CatalyzeConstants.songID)"
        print(CatalyzeConstants.getRecoURL)
        createRequest(with: URL(string: CatalyzeConstants.getRecoURL), type: .GET) { request in
            let task = URLSession.shared.dataTask(with: request) { data, _, error in
                guard let data = data, error == nil else {
                    print("error")
                    completion(.failure(APIError.failedToGetData))
                    return
                }
                do {
                    print("Converting to json")
//                    let releases = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                    print("success")
//                    print(releases)
                    let search = try JSONDecoder().decode(SongRecommendations.self, from: data)
//                    print(search)
                    
                    print("Song Recommendations")
                    var songURIArray = [CatalyzeConstants.keySongURI]
                    var songArray = []
                    var artistArray = []
                    
                    
                    for song in search.tracks{
                        print("\nSong: \(song.name)")
                        print("Artist: \(song.artists[0].name)")
                        print("URI: \(song.uri)")
                        
                        songURIArray.append(song.uri)
                        songArray.append(song.name)
                        artistArray.append(song.artists[0].name)
                    }
                    
                    CatalyzeConstants.songURI = NSArray(array:songURIArray).componentsJoined(by: ",")
                    print(CatalyzeConstants.songURI)
                    
//                    CatalyzeConstants.songNames = songArray
//                    CatalyzeConstants.artistNames = artistArray
                    
                }
                catch {
                    print("error")
                    completion(.failure(error))
                }
            }
            task.resume()
            
        }
    }
    
    public func getRandomRecommendations(completion: @escaping ((Result<String, Error>)) -> Void) {
        
        print("Getting Recommendations")
        CatalyzeConstants.getRecoURL = Constants.baseAPIURL + "/recommendations?limit=20&seed_genres=&min_valence=0.5&max_valence=0.6&min_arousal=0.5&max_valence=0.6"
        print(CatalyzeConstants.getRecoURL)
        createRequest(with: URL(string: CatalyzeConstants.getRecoURL), type: .GET) { request in
            let task = URLSession.shared.dataTask(with: request) { data, _, error in
                guard let data = data, error == nil else {
                    print("error")
                    completion(.failure(APIError.failedToGetData))
                    return
                }
                do {
                    print("Converting to json")
                    let releases = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                    print("success")
                    print(releases)
                    let search = try JSONDecoder().decode(SongRecommendations.self, from: data)
//                    print(search)
                    
                    print("Song Recommendations")
                    var songURIArray = []
                    var songArray = []
                    var artistArray = []
                    
                    
                    for song in search.tracks{
                        print("\nSong: \(song.name)")
                        print("Artist: \(song.artists[0].name)")
                        print("URI: \(song.uri)")
                        songURIArray.append(song.uri)
                        songArray.append(song.name)
                        artistArray.append(song.artists[0].name)
                    }
                    
                    CatalyzeConstants.songURI = NSArray(array:songURIArray).componentsJoined(by: ",")
                    print(CatalyzeConstants.songURI)
                    
//                    CatalyzeConstants.songNames = songArray
//                    CatalyzeConstants.artistNames = artistArray
                    
                }
                catch {
                    print("error")
                    completion(.failure(error))
                }
            }
            task.resume()
            
        }
    }
    
    public func createPlaylist(completion: @escaping (Bool) -> Void){
        getCurrentUserProfile{ [weak self] result in
            switch result {
            case .success(let profile):
                let urlString = Constants.baseAPIURL + "/users/\(profile.id)/playlists"
                
                self?.createRequest(with: URL(string: urlString), type: .POST){ baseRequest in
                    var request = baseRequest
                    let json = [
                        "name": "Catalyze Playlist based on \(CatalyzeConstants.songName)",
                        "description": "Catalyzed based on USER'S EMOTION" /// Where you insert the DESCRIPTION of the playlist
                    ]
                    
                    request.httpBody = try? JSONSerialization.data(withJSONObject: json, options: .fragmentsAllowed)
                    
                    let task = URLSession.shared.dataTask(with: request) { data, _, error in
                        guard let data = data, error == nil else {
                            completion(false)
                            return
                        }
                        do {
                            let result = try JSONDecoder().decode(Playlist.self, from: data)
                            print(result)
                            CatalyzeConstants.playlistID = result.id
                            
                            self?.addToPlaylist(){success in
                                if success {
                                    print("Added Song Recommendations to Playlist")
                                }
                                else {
                                    print("Playlist creation failed")
                                }
                            }
                            completion(true)
                        }
                        catch{
                            print(error.localizedDescription)
                            completion(false)
                        }
                    }
                    task.resume()
                }
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    public func addToPlaylist(completion: @escaping (Bool) -> Void){

        CatalyzeConstants.addToPlaylistURL = Constants.baseAPIURL + "/playlists/\(CatalyzeConstants.playlistID)/tracks?uris=\(CatalyzeConstants.songURI)"
        
        print(CatalyzeConstants.addToPlaylistURL)
        
        createRequest(with: URL(string: CatalyzeConstants.addToPlaylistURL), type: .POST){ request in
            
            let task = URLSession.shared.dataTask(with: request) { data, _, error in
                guard let data = data, error == nil else {
                    completion(false)
                    return
                }
                do {
                    let releases = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
//                    let result = try JSONDecoder().decode(Playlist.self, from: data)
//                    print(result)
                    completion(true)
                }
                catch{
                    print(error.localizedDescription)
                    completion(false)
                }
            }
            task.resume()
        }
            
      
    
}
    
    //MARK: - Playback
    
    public func getDevices(completion: @escaping (Result<UserDevices, Error>) -> Void){
        
        let getDevicesURL = Constants.baseAPIURL + "/me/player/devices"
        
        createRequest(with: URL(string: getDevicesURL), type: .GET) { baseRequest in
            
            print("Creating Task")
            let task = URLSession.shared.dataTask(with: baseRequest) { data, _,error in
                print("Task created")
                guard let data = data, error == nil else{
                    print("Failed to get data")
                    completion(.failure(APIError.failedToGetData))
                    return
                }
                do {
                    print("Extracting JSON")
                    let temp = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
//                    print(temp)
                    let result = try JSONDecoder().decode(UserDevices.self, from: data)
                    print(result)
                    for devices in result.devices{
                        if devices.is_active == true{
                            PlaybackConstants.deviceID = devices.id
                        }
                    }
                    completion(.success(result))
                    
                }
                catch{
                    completion(.failure(error))
                }
                
            }
            task.resume()
            
        }
    }
    
    public func getPlayerState(completion: @escaping (Result<Player, Error>) -> Void){
//        var deviceID: String
        self.getDevices{ result in
               DispatchQueue.main.async{
                   switch result {
                   case .success(let model):
                       print("Device ID Extracted")
                   case .failure(let error):
                       
                       print(error.localizedDescription)
                   }
               }
           }
        
        let playerStateURL = Constants.baseAPIURL + "/me/player?market=ES"
//        print(playerStateURL)
//        print(PlaybackConstants.deviceID)
        
        
        createRequest(with: URL(string: playerStateURL), type: .GET){ request in
            
//            var request = baseRequest
//            let json = [
//                "device_ids": "e57616967795502f239e269210e37a1b918c5ab9"
////                "play": "True"
//            ]
            
//            request.httpBody = try? JSONSerialization.data(withJSONObject: json, options: .fragmentsAllowed)
            
            let task = URLSession.shared.dataTask(with: request) { data, _, error in
                guard let data = data, error == nil else {
                    completion(.failure(APIError.failedToGetData))
                    return
                }
                do {
//                    let status = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
//                    print(status)
                    let result = try JSONDecoder().decode(Player.self, from: data)
                    print(result)
                    let durationD = result.item.duration_ms
                    let duration = Int(durationD).msToSeconds.minuteSecond
                    let progressD = result.progress_ms
                    let progress = Int(progressD).msToSeconds.minuteSecond
                    print("Is song still playing: \(result.is_playing)")
                    print("Song: \(result.item.name)")
                    print("Duration: \(progress) of \(duration)")
//                    if result.is_playing == true{
//                        print("\nSong is Playing\n")
//                        PlaybackConstants.playbackURL = Constants.baseAPIURL + "/me/player/pause"
//                    }
//                    else{
//                        print("\nSong is not playing\n")
//                        PlaybackConstants.playbackURL = Constants.baseAPIURL + "/me/player/play"
//                    }
                    completion(.success(result))
                }
                catch{
                    print(error.localizedDescription)
                    completion(.failure(APIError.failedToGetData))
                }
            }
            task.resume()
        }
    }
    
    public func useCurrentSong(){
        
        self.getPlayerState{ result in
               DispatchQueue.main.async{
                   switch result {
                   case .success(let model):
//                       model.
                       print("Device ID Extracted")
                   case .failure(let error):
                       
                       print(error.localizedDescription)
                   }
               }
           }
        
    }
    
    public func controlPlayback(){
        self.getPlayerState{ result in
               DispatchQueue.main.async{
                   switch result {
                   case .success(let model):
                       print(model.is_playing)
                       if model.is_playing == true{
                           print("\nSong is Playing\n")
                           self.pausePlayback {success in
                               if success {
                                   print("Control Successful")
                               }
                               else {
                                   print("Control failed")
                               }
                           }
                           print("Song is now paused")
                       }
                       else{
                           print("\nSong is not playing\n")
                           self.playPlayback {success in
                               if success {
                                   print("Control Successful")
                               }
                               else {
                                   print("Control failed")
                               }
                           }
                           print("Song is now playing")
                           
                       }
                   case .failure(let error):
                       
                       print(error.localizedDescription)
                   }
               }
           }
        
        print(PlaybackConstants.playbackURL)
    }
    
    public func pausePlayback(completion: @escaping (Bool) -> Void) {
        
        createRequest(with: URL(string: Constants.baseAPIURL + "/me/player/pause"), type: .PUT) { request in
            let task = URLSession.shared.dataTask(with: request) { data, _, error in
                guard let data = data, error == nil else {
                    print("error")
                    completion(true)
                    return
                }
                do {
                    print("Sending control")
                    let releases = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                    print("success")
                    print(releases)
                }
                catch {
                    print("error")
                    completion(false)
                }
            }
            task.resume()
            
        }
    }
    
    public func playPlayback(completion: @escaping (Bool) -> Void) {
        print("Getting new releases")
        createRequest(with: URL(string: Constants.baseAPIURL + "/me/player/play"), type: .PUT) { request in
            let task = URLSession.shared.dataTask(with: request) { data, _, error in
                guard let data = data, error == nil else {
                    print("error")
                    completion(true)
                    return
                }
                do {
                    print("Converting to json")
                    let releases = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                    print("success")
                    print(releases)
                }
                catch {
                    print("error")
                    completion(false)
                }
            }
            task.resume()
            
        }
    }
    
    public func nextSongPlayback() {
        
        createRequest(with: URL(string: Constants.baseAPIURL + "/me/player/next"), type: .POST) { request in
            let task = URLSession.shared.dataTask(with: request) { _,_,_ in
            }
            task.resume()
            
        }
    }
    
    public func prevSongPlayback() {
        
        createRequest(with: URL(string: Constants.baseAPIURL + "/me/player/previous"), type: .POST) { request in
            let task = URLSession.shared.dataTask(with: request) {_,_,_ in
            }
            task.resume()
            
        }
    }
    
    
    
    //MARK: - Search
    
    public func search(with query: String, completion: @escaping (Result<[String],Error>) -> Void){
        createRequest(
            with: URL(string: Constants.baseAPIURL + "/search?type=track&q=\(query.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")"),
            type: .GET){ request in
                print(request.url?.absoluteString ?? "None")
                let task = URLSession.shared.dataTask(with: request) { data, _, error in
                    guard let data = data, error == nil else {
                        completion(.failure(APIError.failedToGetData))
                        return
                    }
                    do{
                        let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                        print(json)
                    }
                    catch{
                        print(error)
                    }
                }
                task.resume()
                
            }
    }
    
    
    //MARK: - Private
    
    enum HTTPMethod: String{
        case GET
        case POST
        case PUT
    }
        
    private func createRequest(with url: URL?, type: HTTPMethod, completion: @escaping (URLRequest) -> Void) {
        print("Creating Request")
        AuthManager.shared.withValidToken{ token in
            guard let apiURL = url else{
                return
            }
         
            var request = URLRequest(url: apiURL)
            request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            request.httpMethod = type.rawValue
            request.timeoutInterval = 100
            print("Request Completed")
            completion(request)
            
            
        }
    
    }
}
