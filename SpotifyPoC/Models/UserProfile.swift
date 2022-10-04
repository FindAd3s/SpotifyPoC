//
//  UserProfile.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 9/21/22.
//

import Foundation

struct UserProfile: Codable {
    
    let country: String
    let display_name: String
    let email: String
    let explicit_content: [String: Bool]
    let external_urls: [String: String]
    let id: String
    let images: [UserImage]
    let product: String
}

struct UserImage: Codable{
    
    let url: String
    
}
    /*
     {
         country = PH;
         "display_name" = Richton;
         email = "findtheradian@gmail.com";
         "explicit_content" =     {
             "filter_enabled" = 0;
             "filter_locked" = 0;
         };
         "external_urls" =     {
             spotify = "https://open.spotify.com/user/12145090977";
         };
         followers =     {
             href = "<null>";
             total = 30;
         };
         href = "https://api.spotify.com/v1/users/12145090977";
         id = 12145090977;
         images =     (
                     {
                 height = "<null>";
                 url = "https://scontent.fmaa10-1.fna.fbcdn.net/v/t1.6435-1/131106968_3976995198999828_1314634602373056331_n.jpg?stp=dst-jpg_p320x320&_nc_cat=107&ccb=1-7&_nc_sid=0c64ff&_nc_ohc=ynbKfRD3U8AAX-wQ9HQ&_nc_ht=scontent.fmaa10-1.fna&edm=AP4hL3IEAAAA&oh=00_AT8v5wfVznStI-S67d1wJrk0DBPvUOQOhkW6GSPUkrio8g&oe=63544674";
                 width = "<null>";
             }
         );
         product = premium;
         type = user;
         uri = "spotify:user:12145090977";
     }
     */
    

