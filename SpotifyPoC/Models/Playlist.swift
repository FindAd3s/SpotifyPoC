//
//  Playlist.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 9/21/22.
//

import Foundation

struct Playlist: Codable {
    let name: String
    let id: String
    
}
//
//struct UserProfile: Codable {
//
//    let country: String
//    let display_name: String
//    let email: String
//    let explicit_content: [String: Bool]
//    let external_urls: [String: String]
//    let id: String
//    let images: [UserImage]
//    let product: String

/*
 
 {
     collaborative = 0;
     description = "<null>";
     "external_urls" =     {
         spotify = "https://open.spotify.com/playlist/3ybX5ZBTxsZARhIqCIiQ23";
     };
     followers =     {
         href = "<null>";
         total = 0;
     };
     href = "https://api.spotify.com/v1/playlists/3ybX5ZBTxsZARhIqCIiQ23";
     id = 3ybX5ZBTxsZARhIqCIiQ23;
     images =     (
     );
     name = "Sample Playlist";
     owner =     {
         "display_name" = Richton;
         "external_urls" =         {
             spotify = "https://open.spotify.com/user/12145090977";
         };
         href = "https://api.spotify.com/v1/users/12145090977";
         id = 12145090977;
         type = user;
         uri = "spotify:user:12145090977";
     };
     "primary_color" = "<null>";
     public = 1;
     "snapshot_id" = MSxmYWY1Nzk3ZWJjOWI3NmQ1Y2EwOTFjYzY1NzBjZTQ5NDc1ODQwNDE4;
     tracks =     {
         href = "https://api.spotify.com/v1/playlists/3ybX5ZBTxsZARhIqCIiQ23/tracks";
         items =         (
         );
         limit = 100;
         next = "<null>";
         offset = 0;
         previous = "<null>";
         total = 0;
     };
     type = playlist;
     uri = "spotify:playlist:3ybX5ZBTxsZARhIqCIiQ23";
 }
 
 */
