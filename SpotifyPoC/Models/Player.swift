//
//  Player.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 10/12/22.
//

import Foundation

struct Player: Codable{
    let item: Item
    let progress_ms: Double
}

struct Item: Codable{
    let name: String
    let duration_ms: Double
    let album: Album1
}

struct Album1: Codable{
    
}

/*
 {
     actions =     {
         disallows =         {
             resuming = 1;
         };
     };
     context =     {
         "external_urls" =         {
             spotify = "https://open.spotify.com/playlist/3HsOKZO8c8pVcp3QgZ9zIs";
         };
         href = "https://api.spotify.com/v1/playlists/3HsOKZO8c8pVcp3QgZ9zIs";
         type = playlist;
         uri = "spotify:playlist:3HsOKZO8c8pVcp3QgZ9zIs";
     };
     "currently_playing_type" = track;
     device =     {
         id = e57616967795502f239e269210e37a1b918c5ab9;
         "is_active" = 1;
         "is_private_session" = 0;
         "is_restricted" = 0;
         name = "\U8a31\U4e16\U5091";
         type = Computer;
         "volume_percent" = 64;
     };
     "is_playing" = 1;
     item =     {
         album =         {
             "album_type" = compilation;
             artists =             (
                                 {
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/artist/0LyfQWJT6nXafLPZqxe9Of";
                     };
                     href = "https://api.spotify.com/v1/artists/0LyfQWJT6nXafLPZqxe9Of";
                     id = 0LyfQWJT6nXafLPZqxe9Of;
                     name = "Various Artists";
                     type = artist;
                     uri = "spotify:artist:0LyfQWJT6nXafLPZqxe9Of";
                 }
             );
             "external_urls" =             {
                 spotify = "https://open.spotify.com/album/0i6rgFpZx4UOPHTGVdS59C";
             };
             href = "https://api.spotify.com/v1/albums/0i6rgFpZx4UOPHTGVdS59C";
             id = 0i6rgFpZx4UOPHTGVdS59C;
             images =             (
                                 {
                     height = 640;
                     url = "https://i.scdn.co/image/ab67616d0000b273f412bb77065e48480daf5638";
                     width = 640;
                 },
                                 {
                     height = 300;
                     url = "https://i.scdn.co/image/ab67616d00001e02f412bb77065e48480daf5638";
                     width = 300;
                 },
                                 {
                     height = 64;
                     url = "https://i.scdn.co/image/ab67616d00004851f412bb77065e48480daf5638";
                     width = 64;
                 }
             );
             name = "Epidemic Presents: Crates (Chun-Li Edition)";
             "release_date" = "2022-02-25";
             "release_date_precision" = day;
             "total_tracks" = 53;
             type = album;
             uri = "spotify:album:0i6rgFpZx4UOPHTGVdS59C";
         };
         artists =         (
                         {
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/artist/5UmcVVjFoJMedeFSY7HXRo";
                 };
                 href = "https://api.spotify.com/v1/artists/5UmcVVjFoJMedeFSY7HXRo";
                 id = 5UmcVVjFoJMedeFSY7HXRo;
                 name = Curio;
                 type = artist;
                 uri = "spotify:artist:5UmcVVjFoJMedeFSY7HXRo";
             },
                         {
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/artist/4EdUsCGAVQWUtLwVMnwKru";
                 };
                 href = "https://api.spotify.com/v1/artists/4EdUsCGAVQWUtLwVMnwKru";
                 id = 4EdUsCGAVQWUtLwVMnwKru;
                 name = Lucy;
                 type = artist;
                 uri = "spotify:artist:4EdUsCGAVQWUtLwVMnwKru";
             },
                         {
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/artist/1uwGIdDsv9rhyzuqgYhOuS";
                 };
                 href = "https://api.spotify.com/v1/artists/1uwGIdDsv9rhyzuqgYhOuS";
                 id = 1uwGIdDsv9rhyzuqgYhOuS;
                 name = Daxten;
                 type = artist;
                 uri = "spotify:artist:1uwGIdDsv9rhyzuqgYhOuS";
             }
         );
         "disc_number" = 1;
         "duration_ms" = 247404;
         explicit = 0;
         "external_ids" =         {
             isrc = SE5Q51828957;
         };
         "external_urls" =         {
             spotify = "https://open.spotify.com/track/1LDuJe4VmuOVRAcHpjRgkm";
         };
         href = "https://api.spotify.com/v1/tracks/1LDuJe4VmuOVRAcHpjRgkm";
         id = 1LDuJe4VmuOVRAcHpjRgkm;
         "is_local" = 0;
         "is_playable" = 1;
         name = "Ten Feet (Daxten Remix)";
         popularity = 40;
         "preview_url" = "https://p.scdn.co/mp3-preview/632591f3c1642bd1288c8f11ff477a0428d5d2d7?cid=27492275f02f499e851bbaa579ef88ca";
         "track_number" = 13;
         type = track;
         uri = "spotify:track:1LDuJe4VmuOVRAcHpjRgkm";
     };
     "progress_ms" = 67073;
     "repeat_state" = off;
     "shuffle_state" = 0;
     timestamp = 1665563086546;
 }
 */
