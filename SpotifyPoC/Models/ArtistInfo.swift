//
//  SearchResults.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 10/2/22.
//

import Foundation

struct ArtistInfo: Codable {
    let genres: [String]
}
//
//struct Tracks: Codable{
////    let limit: Int
//    let items: [Items]
//}
//
//struct Items: Codable {
//    let album: Album
//    let name: String
//}
//
//struct Album: Codable{
//    let artists: [Artists]
//    let id: String
//}
//
//struct Artists: Codable{
//    let id: String
//    let name: String
//}


//{
//    "external_urls" =     {
//        spotify = "https://open.spotify.com/artist/6LuN9FCkKOj5PcnpouEgny";
//    };
//    followers =     {
//        href = "<null>";
//        total = 15528440;
//    };
//    genres =     (
//        pop,
//        "pop r&b"
//    );
//    href = "https://api.spotify.com/v1/artists/6LuN9FCkKOj5PcnpouEgny";
//    id = 6LuN9FCkKOj5PcnpouEgny;
//    images =     (
//                {
//            height = 640;
//            url = "https://i.scdn.co/image/ab6761610000e5eb31072db9da0311ecfabe96bf";
//            width = 640;
//        },
//                {
//            height = 320;
//            url = "https://i.scdn.co/image/ab6761610000517431072db9da0311ecfabe96bf";
//            width = 320;
//        },
//                {
//            height = 160;
//            url = "https://i.scdn.co/image/ab6761610000f17831072db9da0311ecfabe96bf";
//            width = 160;
//        }
//    );
//    name = Khalid;
//    popularity = 86;
//    type = artist;
//    uri = "spotify:artist:6LuN9FCkKOj5PcnpouEgny";
//}
