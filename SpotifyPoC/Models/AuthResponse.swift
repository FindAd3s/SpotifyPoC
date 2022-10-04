//
//  AuthResponse.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 9/21/22.
//

import Foundation

struct AuthResponse: Codable{
    
    
//    "access_token" = "BQDrLWyy1W1ymu5Aqxs9vktUFuZ4Vz-XnTZenKmqog3YWcL8u7GC-_ZebF3oWpUxvYJUrPklnKTDfAxShv_YyouVlL7RyWqyFJuXWzMH9KE1zNyVEud0LnkWWPam5aewMXihtePYV_HcOsVYREKXwaGosS3uiKPpYUnKI37G0DvIdvS5J9ko-m3A-KmO1mUaRxzvbW1O8nfKnfncXQOABUA";
//    "expires_in" = 3600;
//    "refresh_token" = "AQALORkQT8BIA8quHRrSlQiiJr-u5MbhGgWLhnJVjUq8tn6zWZEzkrFQB1MdZQHH3sQ3x9HKpFkSFj7SkKr69zS3brQv3oanTXoBrLMcC6vK-gmy3vVHNiMRFq1d2eErZd0";
//    scope = "user-read-private";
//    "token_type" = Bearer;
    
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    let scope: String
    let token_type: String
}
