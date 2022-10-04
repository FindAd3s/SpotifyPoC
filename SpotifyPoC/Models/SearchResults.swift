//
//  SearchResults.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 10/2/22.
//

import Foundation

struct SearchResults: Codable {
    let tracks: Tracks
}

struct Tracks: Codable{
//    let limit: Int
    let items: [Items]
}

struct Items: Codable {
    let album: Album
    let name: String
}

struct Album: Codable{
    let artists: [Artists]
    let id: String
}

struct Artists: Codable{
    let id: String
    let name: String
}

/*
 {
     tracks =     {
         href = "https://api.spotify.com/v1/search?query=track%3APaku&type=track&market=ES&locale=en-US%2Cen%3Bq%3D0.9&offset=0&limit=20";
         items =         (
                         {
                 album =                 {
                     "album_type" = single;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/3UY1KK0iXeC0mpaK0ltFza";
                             };
                             href = "https://api.spotify.com/v1/artists/3UY1KK0iXeC0mpaK0ltFza";
                             id = 3UY1KK0iXeC0mpaK0ltFza;
                             name = asmi;
                             type = artist;
                             uri = "spotify:artist:3UY1KK0iXeC0mpaK0ltFza";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/2nHwbkFhdzyC79w5Js8Asy";
                     };
                     href = "https://api.spotify.com/v1/albums/2nHwbkFhdzyC79w5Js8Asy";
                     id = 2nHwbkFhdzyC79w5Js8Asy;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b2737d8ae42daa55755ca98d7629";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e027d8ae42daa55755ca98d7629";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d000048517d8ae42daa55755ca98d7629";
                             width = 64;
                         }
                     );
                     name = PAKU;
                     "release_date" = "2022-03-30";
                     "release_date_precision" = day;
                     "total_tracks" = 2;
                     type = album;
                     uri = "spotify:album:2nHwbkFhdzyC79w5Js8Asy";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/3UY1KK0iXeC0mpaK0ltFza";
                         };
                         href = "https://api.spotify.com/v1/artists/3UY1KK0iXeC0mpaK0ltFza";
                         id = 3UY1KK0iXeC0mpaK0ltFza;
                         name = asmi;
                         type = artist;
                         uri = "spotify:artist:3UY1KK0iXeC0mpaK0ltFza";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 125771;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = JPU902201069;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/6nYezkgAePhAmnxNTQRsLV";
                 };
                 href = "https://api.spotify.com/v1/tracks/6nYezkgAePhAmnxNTQRsLV";
                 id = 6nYezkgAePhAmnxNTQRsLV;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = PAKU;
                 popularity = 62;
                 "preview_url" = "https://p.scdn.co/mp3-preview/de4ccd95011626bfdb1e8dd2f499876f69b97485?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 1;
                 type = track;
                 uri = "spotify:track:6nYezkgAePhAmnxNTQRsLV";
             },
                         {
                 album =                 {
                     "album_type" = single;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/3e8V8NqZf6jsUjDEI6rwst";
                             };
                             href = "https://api.spotify.com/v1/artists/3e8V8NqZf6jsUjDEI6rwst";
                             id = 3e8V8NqZf6jsUjDEI6rwst;
                             name = Majki;
                             type = artist;
                             uri = "spotify:artist:3e8V8NqZf6jsUjDEI6rwst";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/5r6FxIoM8Scq47js7VuVMH";
                     };
                     href = "https://api.spotify.com/v1/albums/5r6FxIoM8Scq47js7VuVMH";
                     id = 5r6FxIoM8Scq47js7VuVMH;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b273724667158f48915b2aa0de9e";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e02724667158f48915b2aa0de9e";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d00004851724667158f48915b2aa0de9e";
                             width = 64;
                         }
                     );
                     name = "Pakuje Walize ale to VIXA (Remix)";
                     "release_date" = "2022-04-29";
                     "release_date_precision" = day;
                     "total_tracks" = 1;
                     type = album;
                     uri = "spotify:album:5r6FxIoM8Scq47js7VuVMH";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/3e8V8NqZf6jsUjDEI6rwst";
                         };
                         href = "https://api.spotify.com/v1/artists/3e8V8NqZf6jsUjDEI6rwst";
                         id = 3e8V8NqZf6jsUjDEI6rwst;
                         name = Majki;
                         type = artist;
                         uri = "spotify:artist:3e8V8NqZf6jsUjDEI6rwst";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 144384;
                 explicit = 1;
                 "external_ids" =                 {
                     isrc = PLR862200227;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/2cwngpZQW6WSYT84dkOkUg";
                 };
                 href = "https://api.spotify.com/v1/tracks/2cwngpZQW6WSYT84dkOkUg";
                 id = 2cwngpZQW6WSYT84dkOkUg;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = "Pakuje Walize ale to VIXA - Remix";
                 popularity = 57;
                 "preview_url" = "https://p.scdn.co/mp3-preview/7ad79c7c6782f0a9f5f075b79b5140672766beff?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 1;
                 type = track;
                 uri = "spotify:track:2cwngpZQW6WSYT84dkOkUg";
             },
                         {
                 album =                 {
                     "album_type" = single;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/15QmBDKjNXo007uqM3KnNb";
                             };
                             href = "https://api.spotify.com/v1/artists/15QmBDKjNXo007uqM3KnNb";
                             id = 15QmBDKjNXo007uqM3KnNb;
                             name = "Chocolate Mc";
                             type = artist;
                             uri = "spotify:artist:15QmBDKjNXo007uqM3KnNb";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/7pkKIq3IS3Hkhnr35kO2fX";
                     };
                     href = "https://api.spotify.com/v1/albums/7pkKIq3IS3Hkhnr35kO2fX";
                     id = 7pkKIq3IS3Hkhnr35kO2fX;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b273308786be79df119ff59eb3fc";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e02308786be79df119ff59eb3fc";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d00004851308786be79df119ff59eb3fc";
                             width = 64;
                         }
                     );
                     name = Pakumba;
                     "release_date" = "2019-10-01";
                     "release_date_precision" = day;
                     "total_tracks" = 1;
                     type = album;
                     uri = "spotify:album:7pkKIq3IS3Hkhnr35kO2fX";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/15QmBDKjNXo007uqM3KnNb";
                         };
                         href = "https://api.spotify.com/v1/artists/15QmBDKjNXo007uqM3KnNb";
                         id = 15QmBDKjNXo007uqM3KnNb;
                         name = "Chocolate Mc";
                         type = artist;
                         uri = "spotify:artist:15QmBDKjNXo007uqM3KnNb";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 210906;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = QZ7R41952218;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/4T7Yjb07qBW8IJdmznFZc7";
                 };
                 href = "https://api.spotify.com/v1/tracks/4T7Yjb07qBW8IJdmznFZc7";
                 id = 4T7Yjb07qBW8IJdmznFZc7;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = Pakumba;
                 popularity = 15;
                 "preview_url" = "https://p.scdn.co/mp3-preview/31019e26f5117b247f365e8b943095384d90e075?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 1;
                 type = track;
                 uri = "spotify:track:4T7Yjb07qBW8IJdmznFZc7";
             },
                         {
                 album =                 {
                     "album_type" = album;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/0UjocdcnEw9XDekR8YYAOp";
                             };
                             href = "https://api.spotify.com/v1/artists/0UjocdcnEw9XDekR8YYAOp";
                             id = 0UjocdcnEw9XDekR8YYAOp;
                             name = "DJ Red Core";
                             type = artist;
                             uri = "spotify:artist:0UjocdcnEw9XDekR8YYAOp";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/6omVO1YgezlTpQLjk5rhVg";
                     };
                     href = "https://api.spotify.com/v1/albums/6omVO1YgezlTpQLjk5rhVg";
                     id = 6omVO1YgezlTpQLjk5rhVg;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b273e58451e6b129ea154cd1dc2f";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e02e58451e6b129ea154cd1dc2f";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d00004851e58451e6b129ea154cd1dc2f";
                             width = 64;
                         }
                     );
                     name = "Budots Dance, Vol. 12";
                     "release_date" = "2019-07-10";
                     "release_date_precision" = day;
                     "total_tracks" = 10;
                     type = album;
                     uri = "spotify:album:6omVO1YgezlTpQLjk5rhVg";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/0UjocdcnEw9XDekR8YYAOp";
                         };
                         href = "https://api.spotify.com/v1/artists/0UjocdcnEw9XDekR8YYAOp";
                         id = 0UjocdcnEw9XDekR8YYAOp;
                         name = "DJ Red Core";
                         type = artist;
                         uri = "spotify:artist:0UjocdcnEw9XDekR8YYAOp";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 264907;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = QZFZ21965116;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/3oaBMMKmAZqykohULF4dFH";
                 };
                 href = "https://api.spotify.com/v1/tracks/3oaBMMKmAZqykohULF4dFH";
                 id = 3oaBMMKmAZqykohULF4dFH;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = Pakusgi;
                 popularity = 10;
                 "preview_url" = "https://p.scdn.co/mp3-preview/32d839d41e22f1b964b897833a9cb482000b3e36?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 7;
                 type = track;
                 uri = "spotify:track:3oaBMMKmAZqykohULF4dFH";
             },
                         {
                 album =                 {
                     "album_type" = album;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/0Od2brltKfcyVsFOLmJqGA";
                             };
                             href = "https://api.spotify.com/v1/artists/0Od2brltKfcyVsFOLmJqGA";
                             id = 0Od2brltKfcyVsFOLmJqGA;
                             name = "Ursus Factory";
                             type = artist;
                             uri = "spotify:artist:0Od2brltKfcyVsFOLmJqGA";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/0jyg4I7bzUIyoVuqdwIk8r";
                     };
                     href = "https://api.spotify.com/v1/albums/0jyg4I7bzUIyoVuqdwIk8r";
                     id = 0jyg4I7bzUIyoVuqdwIk8r;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b273287f20db41d00c3b90e40083";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e02287f20db41d00c3b90e40083";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d00004851287f20db41d00c3b90e40083";
                             width = 64;
                         }
                     );
                     name = "Onnellinen sukupolvi";
                     "release_date" = "2021-06-04";
                     "release_date_precision" = day;
                     "total_tracks" = 11;
                     type = album;
                     uri = "spotify:album:0jyg4I7bzUIyoVuqdwIk8r";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/0Od2brltKfcyVsFOLmJqGA";
                         };
                         href = "https://api.spotify.com/v1/artists/0Od2brltKfcyVsFOLmJqGA";
                         id = 0Od2brltKfcyVsFOLmJqGA;
                         name = "Ursus Factory";
                         type = artist;
                         uri = "spotify:artist:0Od2brltKfcyVsFOLmJqGA";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 233048;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = FIUM72100129;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/6Nlm5WP8gr0W8IPZJtigii";
                 };
                 href = "https://api.spotify.com/v1/tracks/6Nlm5WP8gr0W8IPZJtigii";
                 id = 6Nlm5WP8gr0W8IPZJtigii;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = "Miettusen paku";
                 popularity = 23;
                 "preview_url" = "https://p.scdn.co/mp3-preview/36a03e129654d6ff73bad32ad0759848ad7ebf28?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 6;
                 type = track;
                 uri = "spotify:track:6Nlm5WP8gr0W8IPZJtigii";
             },
                         {
                 album =                 {
                     "album_type" = album;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/15QmBDKjNXo007uqM3KnNb";
                             };
                             href = "https://api.spotify.com/v1/artists/15QmBDKjNXo007uqM3KnNb";
                             id = 15QmBDKjNXo007uqM3KnNb;
                             name = "Chocolate Mc";
                             type = artist;
                             uri = "spotify:artist:15QmBDKjNXo007uqM3KnNb";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/4OfBI6bpCsflQrY9P1OYn3";
                     };
                     href = "https://api.spotify.com/v1/albums/4OfBI6bpCsflQrY9P1OYn3";
                     id = 4OfBI6bpCsflQrY9P1OYn3;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b273d66165048def8192551817fd";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e02d66165048def8192551817fd";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d00004851d66165048def8192551817fd";
                             width = 64;
                         }
                     );
                     name = "Lo Mejor de Chocolate Mc";
                     "release_date" = "2022-01-14";
                     "release_date_precision" = day;
                     "total_tracks" = 8;
                     type = album;
                     uri = "spotify:album:4OfBI6bpCsflQrY9P1OYn3";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/15QmBDKjNXo007uqM3KnNb";
                         };
                         href = "https://api.spotify.com/v1/artists/15QmBDKjNXo007uqM3KnNb";
                         id = 15QmBDKjNXo007uqM3KnNb;
                         name = "Chocolate Mc";
                         type = artist;
                         uri = "spotify:artist:15QmBDKjNXo007uqM3KnNb";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 210906;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = QZ7R41952218;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/5fRmkMlgDkqzn7y6249DnP";
                 };
                 href = "https://api.spotify.com/v1/tracks/5fRmkMlgDkqzn7y6249DnP";
                 id = 5fRmkMlgDkqzn7y6249DnP;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = Pakumba;
                 popularity = 25;
                 "preview_url" = "https://p.scdn.co/mp3-preview/29ffce13beb9d6eb606bea655c74f5579a6bc6a9?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 5;
                 type = track;
                 uri = "spotify:track:5fRmkMlgDkqzn7y6249DnP";
             },
                         {
                 album =                 {
                     "album_type" = album;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/3tVQdUvClmAT7URs9V3rsp";
                             };
                             href = "https://api.spotify.com/v1/artists/3tVQdUvClmAT7URs9V3rsp";
                             id = 3tVQdUvClmAT7URs9V3rsp;
                             name = Wizkid;
                             type = artist;
                             uri = "spotify:artist:3tVQdUvClmAT7URs9V3rsp";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/16xW2AvG6yVXJJ0ZYJ5Dlb";
                     };
                     href = "https://api.spotify.com/v1/albums/16xW2AvG6yVXJJ0ZYJ5Dlb";
                     id = 16xW2AvG6yVXJJ0ZYJ5Dlb;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b273475dd4740dc71dbd4a7101e5";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e02475dd4740dc71dbd4a7101e5";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d00004851475dd4740dc71dbd4a7101e5";
                             width = 64;
                         }
                     );
                     name = Superstar;
                     "release_date" = "2011-06-12";
                     "release_date_precision" = day;
                     "total_tracks" = 17;
                     type = album;
                     uri = "spotify:album:16xW2AvG6yVXJJ0ZYJ5Dlb";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/3tVQdUvClmAT7URs9V3rsp";
                         };
                         href = "https://api.spotify.com/v1/artists/3tVQdUvClmAT7URs9V3rsp";
                         id = 3tVQdUvClmAT7URs9V3rsp;
                         name = Wizkid;
                         type = artist;
                         uri = "spotify:artist:3tVQdUvClmAT7URs9V3rsp";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 212005;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = USHM81288000;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/2EahSgwzCKSvJMM2BOzDDu";
                 };
                 href = "https://api.spotify.com/v1/tracks/2EahSgwzCKSvJMM2BOzDDu";
                 id = 2EahSgwzCKSvJMM2BOzDDu;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = Pakurumo;
                 popularity = 44;
                 "preview_url" = "https://p.scdn.co/mp3-preview/94408c4d95d014a8241c9c7db85e542649f58d4a?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 4;
                 type = track;
                 uri = "spotify:track:2EahSgwzCKSvJMM2BOzDDu";
             },
                         {
                 album =                 {
                     "album_type" = single;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/5LsYtFmKlbTV6TntldN4nW";
                             };
                             href = "https://api.spotify.com/v1/artists/5LsYtFmKlbTV6TntldN4nW";
                             id = 5LsYtFmKlbTV6TntldN4nW;
                             name = ANONIM;
                             type = artist;
                             uri = "spotify:artist:5LsYtFmKlbTV6TntldN4nW";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/0iWhvEqfBRIGYmDrjUskOD";
                     };
                     href = "https://api.spotify.com/v1/albums/0iWhvEqfBRIGYmDrjUskOD";
                     id = 0iWhvEqfBRIGYmDrjUskOD;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b273b82fa1b0a43129de80a1061e";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e02b82fa1b0a43129de80a1061e";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d00004851b82fa1b0a43129de80a1061e";
                             width = 64;
                         }
                     );
                     name = "Pakuje Walize";
                     "release_date" = "2022-05-15";
                     "release_date_precision" = day;
                     "total_tracks" = 1;
                     type = album;
                     uri = "spotify:album:0iWhvEqfBRIGYmDrjUskOD";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/5LsYtFmKlbTV6TntldN4nW";
                         };
                         href = "https://api.spotify.com/v1/artists/5LsYtFmKlbTV6TntldN4nW";
                         id = 5LsYtFmKlbTV6TntldN4nW;
                         name = ANONIM;
                         type = artist;
                         uri = "spotify:artist:5LsYtFmKlbTV6TntldN4nW";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 147810;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = QZMHL2248038;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/6W6x0YJs61FjvcoXR8wJm1";
                 };
                 href = "https://api.spotify.com/v1/tracks/6W6x0YJs61FjvcoXR8wJm1";
                 id = 6W6x0YJs61FjvcoXR8wJm1;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = "Pakuje Walize";
                 popularity = 12;
                 "preview_url" = "https://p.scdn.co/mp3-preview/86f76eccf79c0a289b49d1a7ddcbc246a59a1634?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 1;
                 type = track;
                 uri = "spotify:track:6W6x0YJs61FjvcoXR8wJm1";
             },
                         {
                 album =                 {
                     "album_type" = single;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/5io96qFvFJevk6P5NSM2pq";
                             };
                             href = "https://api.spotify.com/v1/artists/5io96qFvFJevk6P5NSM2pq";
                             id = 5io96qFvFJevk6P5NSM2pq;
                             name = "Dawid, Artysta";
                             type = artist;
                             uri = "spotify:artist:5io96qFvFJevk6P5NSM2pq";
                         },
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/75wMNgYkzacOI08FN7BaG0";
                             };
                             href = "https://api.spotify.com/v1/artists/75wMNgYkzacOI08FN7BaG0";
                             id = 75wMNgYkzacOI08FN7BaG0;
                             name = "V\U0142odarski";
                             type = artist;
                             uri = "spotify:artist:75wMNgYkzacOI08FN7BaG0";
                         },
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/7ho5bL4sZl37F4xc9lr36q";
                             };
                             href = "https://api.spotify.com/v1/artists/7ho5bL4sZl37F4xc9lr36q";
                             id = 7ho5bL4sZl37F4xc9lr36q;
                             name = VHS;
                             type = artist;
                             uri = "spotify:artist:7ho5bL4sZl37F4xc9lr36q";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/0c0nhk4yuDUfXIoTon4RrO";
                     };
                     href = "https://api.spotify.com/v1/albums/0c0nhk4yuDUfXIoTon4RrO";
                     id = 0c0nhk4yuDUfXIoTon4RrO;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b2738e5c7b05cf1ae855ef1fba37";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e028e5c7b05cf1ae855ef1fba37";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d000048518e5c7b05cf1ae855ef1fba37";
                             width = 64;
                         }
                     );
                     name = "Pakuje Walize";
                     "release_date" = "2022-03-09";
                     "release_date_precision" = day;
                     "total_tracks" = 1;
                     type = album;
                     uri = "spotify:album:0c0nhk4yuDUfXIoTon4RrO";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/5io96qFvFJevk6P5NSM2pq";
                         };
                         href = "https://api.spotify.com/v1/artists/5io96qFvFJevk6P5NSM2pq";
                         id = 5io96qFvFJevk6P5NSM2pq;
                         name = "Dawid, Artysta";
                         type = artist;
                         uri = "spotify:artist:5io96qFvFJevk6P5NSM2pq";
                     },
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/75wMNgYkzacOI08FN7BaG0";
                         };
                         href = "https://api.spotify.com/v1/artists/75wMNgYkzacOI08FN7BaG0";
                         id = 75wMNgYkzacOI08FN7BaG0;
                         name = "V\U0142odarski";
                         type = artist;
                         uri = "spotify:artist:75wMNgYkzacOI08FN7BaG0";
                     },
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/7ho5bL4sZl37F4xc9lr36q";
                         };
                         href = "https://api.spotify.com/v1/artists/7ho5bL4sZl37F4xc9lr36q";
                         id = 7ho5bL4sZl37F4xc9lr36q;
                         name = VHS;
                         type = artist;
                         uri = "spotify:artist:7ho5bL4sZl37F4xc9lr36q";
                     },
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/3uxgz8rlF99VOs4Mq4AfgD";
                         };
                         href = "https://api.spotify.com/v1/artists/3uxgz8rlF99VOs4Mq4AfgD";
                         id = 3uxgz8rlF99VOs4Mq4AfgD;
                         name = Zebraodzawsze;
                         type = artist;
                         uri = "spotify:artist:3uxgz8rlF99VOs4Mq4AfgD";
                     },
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/10HHYfsgM94lnk6u9vvWZN";
                         };
                         href = "https://api.spotify.com/v1/artists/10HHYfsgM94lnk6u9vvWZN";
                         id = 10HHYfsgM94lnk6u9vvWZN;
                         name = zawad;
                         type = artist;
                         uri = "spotify:artist:10HHYfsgM94lnk6u9vvWZN";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 154000;
                 explicit = 1;
                 "external_ids" =                 {
                     isrc = PLR862200136;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/7CRfTE9FGb9YdSvoGhl2IP";
                 };
                 href = "https://api.spotify.com/v1/tracks/7CRfTE9FGb9YdSvoGhl2IP";
                 id = 7CRfTE9FGb9YdSvoGhl2IP;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = "Pakuje Walize";
                 popularity = 67;
                 "preview_url" = "https://p.scdn.co/mp3-preview/6f76c5c333e32cd08ca0e66fafb0397a909b62d0?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 1;
                 type = track;
                 uri = "spotify:track:7CRfTE9FGb9YdSvoGhl2IP";
             },
                         {
                 album =                 {
                     "album_type" = album;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/0CinAWYkte8opxVAPI3nMu";
                             };
                             href = "https://api.spotify.com/v1/artists/0CinAWYkte8opxVAPI3nMu";
                             id = 0CinAWYkte8opxVAPI3nMu;
                             name = "Jessica Shy";
                             type = artist;
                             uri = "spotify:artist:0CinAWYkte8opxVAPI3nMu";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/7a6yvohFsFbRkQarmnJHcz";
                     };
                     href = "https://api.spotify.com/v1/albums/7a6yvohFsFbRkQarmnJHcz";
                     id = 7a6yvohFsFbRkQarmnJHcz;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b273d214f238a26e67dc523143a2";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e02d214f238a26e67dc523143a2";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d00004851d214f238a26e67dc523143a2";
                             width = 64;
                         }
                     );
                     name = "Apkabinti Prisiminimus";
                     "release_date" = "2022-01-25";
                     "release_date_precision" = day;
                     "total_tracks" = 8;
                     type = album;
                     uri = "spotify:album:7a6yvohFsFbRkQarmnJHcz";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/0CinAWYkte8opxVAPI3nMu";
                         };
                         href = "https://api.spotify.com/v1/artists/0CinAWYkte8opxVAPI3nMu";
                         id = 0CinAWYkte8opxVAPI3nMu;
                         name = "Jessica Shy";
                         type = artist;
                         uri = "spotify:artist:0CinAWYkte8opxVAPI3nMu";
                     },
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/1a1qmSRllFcdwBxl2gkc2N";
                         };
                         href = "https://api.spotify.com/v1/artists/1a1qmSRllFcdwBxl2gkc2N";
                         id = 1a1qmSRllFcdwBxl2gkc2N;
                         name = "Nombeko Auguste";
                         type = artist;
                         uri = "spotify:artist:1a1qmSRllFcdwBxl2gkc2N";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 172000;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = QZFYZ2290294;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/6RmV54gl0nByycqhTajiiZ";
                 };
                 href = "https://api.spotify.com/v1/tracks/6RmV54gl0nByycqhTajiiZ";
                 id = 6RmV54gl0nByycqhTajiiZ;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = "Tyliai Paku\U017ed\U0117k";
                 popularity = 54;
                 "preview_url" = "https://p.scdn.co/mp3-preview/ce7b53e81af17b0a3f3682e32c8b9aac2c32b40f?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 7;
                 type = track;
                 uri = "spotify:track:6RmV54gl0nByycqhTajiiZ";
             },
                         {
                 album =                 {
                     "album_type" = album;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/58i71To0X9eOBkDnW4AjfI";
                             };
                             href = "https://api.spotify.com/v1/artists/58i71To0X9eOBkDnW4AjfI";
                             id = 58i71To0X9eOBkDnW4AjfI;
                             name = "Aarne Alligaattori & Viidakkorumpu";
                             type = artist;
                             uri = "spotify:artist:58i71To0X9eOBkDnW4AjfI";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/5USOZvXY3Vo0jzxLFn5wMF";
                     };
                     href = "https://api.spotify.com/v1/albums/5USOZvXY3Vo0jzxLFn5wMF";
                     id = 5USOZvXY3Vo0jzxLFn5wMF;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b2734aead20b2bfea9ff0cfbf216";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e024aead20b2bfea9ff0cfbf216";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d000048514aead20b2bfea9ff0cfbf216";
                             width = 64;
                         }
                     );
                     name = "Lent\U00e4v\U00e4 matto";
                     "release_date" = "2010-01-01";
                     "release_date_precision" = day;
                     "total_tracks" = 11;
                     type = album;
                     uri = "spotify:album:5USOZvXY3Vo0jzxLFn5wMF";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/58i71To0X9eOBkDnW4AjfI";
                         };
                         href = "https://api.spotify.com/v1/artists/58i71To0X9eOBkDnW4AjfI";
                         id = 58i71To0X9eOBkDnW4AjfI;
                         name = "Aarne Alligaattori & Viidakkorumpu";
                         type = artist;
                         uri = "spotify:artist:58i71To0X9eOBkDnW4AjfI";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 166426;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = FIUM71001702;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/0O1X9JwjEUgM5HRSD4HANN";
                 };
                 href = "https://api.spotify.com/v1/tracks/0O1X9JwjEUgM5HRSD4HANN";
                 id = 0O1X9JwjEUgM5HRSD4HANN;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = "Paku Pekka";
                 popularity = 15;
                 "preview_url" = "https://p.scdn.co/mp3-preview/7ce3c87e436a1dd093576fac9a04082a014bbf67?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 9;
                 type = track;
                 uri = "spotify:track:0O1X9JwjEUgM5HRSD4HANN";
             },
                         {
                 album =                 {
                     "album_type" = single;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/0xuL8l2qakTAyURbZb1gtc";
                             };
                             href = "https://api.spotify.com/v1/artists/0xuL8l2qakTAyURbZb1gtc";
                             id = 0xuL8l2qakTAyURbZb1gtc;
                             name = "Ara Johari";
                             type = artist;
                             uri = "spotify:artist:0xuL8l2qakTAyURbZb1gtc";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/54xxVHXwwYI378GyYGOUCj";
                     };
                     href = "https://api.spotify.com/v1/albums/54xxVHXwwYI378GyYGOUCj";
                     id = 54xxVHXwwYI378GyYGOUCj;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b2732bcf15a24bf4481cfbbe634f";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e022bcf15a24bf4481cfbbe634f";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d000048512bcf15a24bf4481cfbbe634f";
                             width = 64;
                         }
                     );
                     name = Paku;
                     "release_date" = "2018-01-01";
                     "release_date_precision" = day;
                     "total_tracks" = 1;
                     type = album;
                     uri = "spotify:album:54xxVHXwwYI378GyYGOUCj";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/0xuL8l2qakTAyURbZb1gtc";
                         };
                         href = "https://api.spotify.com/v1/artists/0xuL8l2qakTAyURbZb1gtc";
                         id = 0xuL8l2qakTAyURbZb1gtc;
                         name = "Ara Johari";
                         type = artist;
                         uri = "spotify:artist:0xuL8l2qakTAyURbZb1gtc";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 231804;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = MYMA11800187;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/5UVdVoF3GrmEdn0wlH66ra";
                 };
                 href = "https://api.spotify.com/v1/tracks/5UVdVoF3GrmEdn0wlH66ra";
                 id = 5UVdVoF3GrmEdn0wlH66ra;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = Paku;
                 popularity = 27;
                 "preview_url" = "https://p.scdn.co/mp3-preview/3c3e7b4f351a19735627128d8e516753c0dafb4e?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 1;
                 type = track;
                 uri = "spotify:track:5UVdVoF3GrmEdn0wlH66ra";
             },
                         {
                 album =                 {
                     "album_type" = album;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/0uyXaLt4eaKWMf014dufoF";
                             };
                             href = "https://api.spotify.com/v1/artists/0uyXaLt4eaKWMf014dufoF";
                             id = 0uyXaLt4eaKWMf014dufoF;
                             name = "Alick Macheso";
                             type = artist;
                             uri = "spotify:artist:0uyXaLt4eaKWMf014dufoF";
                         },
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/3X5Lj2bX0TA7sse7vwKpjs";
                             };
                             href = "https://api.spotify.com/v1/artists/3X5Lj2bX0TA7sse7vwKpjs";
                             id = 3X5Lj2bX0TA7sse7vwKpjs;
                             name = "Orchestra Mberikwazvo";
                             type = artist;
                             uri = "spotify:artist:3X5Lj2bX0TA7sse7vwKpjs";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/7cc6V2KFdLlME3Ib0MLX8e";
                     };
                     href = "https://api.spotify.com/v1/albums/7cc6V2KFdLlME3Ib0MLX8e";
                     id = 7cc6V2KFdLlME3Ib0MLX8e;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b27315a0480bd54b323a4a1fe15b";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e0215a0480bd54b323a4a1fe15b";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d0000485115a0480bd54b323a4a1fe15b";
                             width = 64;
                         }
                     );
                     name = Magariro;
                     "release_date" = "2014-06-01";
                     "release_date_precision" = day;
                     "total_tracks" = 6;
                     type = album;
                     uri = "spotify:album:7cc6V2KFdLlME3Ib0MLX8e";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/0uyXaLt4eaKWMf014dufoF";
                         };
                         href = "https://api.spotify.com/v1/artists/0uyXaLt4eaKWMf014dufoF";
                         id = 0uyXaLt4eaKWMf014dufoF;
                         name = "Alick Macheso";
                         type = artist;
                         uri = "spotify:artist:0uyXaLt4eaKWMf014dufoF";
                     },
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/3X5Lj2bX0TA7sse7vwKpjs";
                         };
                         href = "https://api.spotify.com/v1/artists/3X5Lj2bX0TA7sse7vwKpjs";
                         id = 3X5Lj2bX0TA7sse7vwKpjs;
                         name = "Orchestra Mberikwazvo";
                         type = artist;
                         uri = "spotify:artist:3X5Lj2bX0TA7sse7vwKpjs";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 487480;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = QMFMG1458045;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/5dRIw8qdRDDIY3lwT1zWlt";
                 };
                 href = "https://api.spotify.com/v1/tracks/5dRIw8qdRDDIY3lwT1zWlt";
                 id = 5dRIw8qdRDDIY3lwT1zWlt;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = "Pakutema Munda";
                 popularity = 19;
                 "preview_url" = "https://p.scdn.co/mp3-preview/1c7480de6b1c832d6da843e011f70bb9f2b3d391?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 1;
                 type = track;
                 uri = "spotify:track:5dRIw8qdRDDIY3lwT1zWlt";
             },
                         {
                 album =                 {
                     "album_type" = compilation;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/0xuL8l2qakTAyURbZb1gtc";
                             };
                             href = "https://api.spotify.com/v1/artists/0xuL8l2qakTAyURbZb1gtc";
                             id = 0xuL8l2qakTAyURbZb1gtc;
                             name = "Ara Johari";
                             type = artist;
                             uri = "spotify:artist:0xuL8l2qakTAyURbZb1gtc";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/6qZjdb0qpsAwIwqfBAOHKa";
                     };
                     href = "https://api.spotify.com/v1/albums/6qZjdb0qpsAwIwqfBAOHKa";
                     id = 6qZjdb0qpsAwIwqfBAOHKa;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b273457b1775ea8f4741f6cba08e";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e02457b1775ea8f4741f6cba08e";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d00004851457b1775ea8f4741f6cba08e";
                             width = 64;
                         }
                     );
                     name = "Koleksi Terbaik Ara Johari";
                     "release_date" = "2022-07-27";
                     "release_date_precision" = day;
                     "total_tracks" = 7;
                     type = album;
                     uri = "spotify:album:6qZjdb0qpsAwIwqfBAOHKa";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/0xuL8l2qakTAyURbZb1gtc";
                         };
                         href = "https://api.spotify.com/v1/artists/0xuL8l2qakTAyURbZb1gtc";
                         id = 0xuL8l2qakTAyURbZb1gtc;
                         name = "Ara Johari";
                         type = artist;
                         uri = "spotify:artist:0xuL8l2qakTAyURbZb1gtc";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 231804;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = MYMA11800187;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/2EOWQWUzSahaBtKslb9uj1";
                 };
                 href = "https://api.spotify.com/v1/tracks/2EOWQWUzSahaBtKslb9uj1";
                 id = 2EOWQWUzSahaBtKslb9uj1;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = Paku;
                 popularity = 20;
                 "preview_url" = "https://p.scdn.co/mp3-preview/9bccca9445c5fc93c0bf8ecd1274635d0257ce5c?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 7;
                 type = track;
                 uri = "spotify:track:2EOWQWUzSahaBtKslb9uj1";
             },
                         {
                 album =                 {
                     "album_type" = album;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/0a7Volvt0expgkNnw24mdX";
                             };
                             href = "https://api.spotify.com/v1/artists/0a7Volvt0expgkNnw24mdX";
                             id = 0a7Volvt0expgkNnw24mdX;
                             name = "Talenta Singers";
                             type = artist;
                             uri = "spotify:artist:0a7Volvt0expgkNnw24mdX";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/0I82luF0NmLdSTpJLPkjL2";
                     };
                     href = "https://api.spotify.com/v1/albums/0I82luF0NmLdSTpJLPkjL2";
                     id = 0I82luF0NmLdSTpJLPkjL2;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b2734bae66abbab5bbdc34efe9f8";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e024bae66abbab5bbdc34efe9f8";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d000048514bae66abbab5bbdc34efe9f8";
                             width = 64;
                         }
                     );
                     name = "30 Lagu Sekolah Minggu, Vol. 2";
                     "release_date" = "2010-03-20";
                     "release_date_precision" = day;
                     "total_tracks" = 30;
                     type = album;
                     uri = "spotify:album:0I82luF0NmLdSTpJLPkjL2";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/0a7Volvt0expgkNnw24mdX";
                         };
                         href = "https://api.spotify.com/v1/artists/0a7Volvt0expgkNnw24mdX";
                         id = 0a7Volvt0expgkNnw24mdX;
                         name = "Talenta Singers";
                         type = artist;
                         uri = "spotify:artist:0a7Volvt0expgkNnw24mdX";
                     }
                 );
                 "disc_number" = 2;
                 "duration_ms" = 81533;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = IDA141701978;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/2Ge96zPUrLehJnFYcqaPCq";
                 };
                 href = "https://api.spotify.com/v1/tracks/2Ge96zPUrLehJnFYcqaPCq";
                 id = 2Ge96zPUrLehJnFYcqaPCq;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = "Tanda Paku";
                 popularity = 20;
                 "preview_url" = "https://p.scdn.co/mp3-preview/e3cfbe1934f4fbd9a7ce6e392d7fbbf20c3a70eb?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 14;
                 type = track;
                 uri = "spotify:track:2Ge96zPUrLehJnFYcqaPCq";
             },
                         {
                 album =                 {
                     "album_type" = album;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/3HKP6DoXb9JCiKmcMvHfli";
                             };
                             href = "https://api.spotify.com/v1/artists/3HKP6DoXb9JCiKmcMvHfli";
                             id = 3HKP6DoXb9JCiKmcMvHfli;
                             name = "System Tazvida & Chazezesa Challengers";
                             type = artist;
                             uri = "spotify:artist:3HKP6DoXb9JCiKmcMvHfli";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/4L9NLAOaAlROS1OcbxtCzo";
                     };
                     href = "https://api.spotify.com/v1/albums/4L9NLAOaAlROS1OcbxtCzo";
                     id = 4L9NLAOaAlROS1OcbxtCzo;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b273cc680082d03b4b20849f68cf";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e02cc680082d03b4b20849f68cf";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d00004851cc680082d03b4b20849f68cf";
                             width = 64;
                         }
                     );
                     name = "Panopfungaira Pane Moto (Yangove Smoko Yega-Yega)";
                     "release_date" = "2006-06-13";
                     "release_date_precision" = day;
                     "total_tracks" = 6;
                     type = album;
                     uri = "spotify:album:4L9NLAOaAlROS1OcbxtCzo";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/3HKP6DoXb9JCiKmcMvHfli";
                         };
                         href = "https://api.spotify.com/v1/artists/3HKP6DoXb9JCiKmcMvHfli";
                         id = 3HKP6DoXb9JCiKmcMvHfli;
                         name = "System Tazvida & Chazezesa Challengers";
                         type = artist;
                         uri = "spotify:artist:3HKP6DoXb9JCiKmcMvHfli";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 461600;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = ZAG530900151;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/3Dd04VaqlqGhGyiwvkMr1E";
                 };
                 href = "https://api.spotify.com/v1/tracks/3Dd04VaqlqGhGyiwvkMr1E";
                 id = 3Dd04VaqlqGhGyiwvkMr1E;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = "Musandishore Pakuroora";
                 popularity = 14;
                 "preview_url" = "https://p.scdn.co/mp3-preview/f109dd34387e5b0cc32dec241d9ae8ee8ef27c86?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 5;
                 type = track;
                 uri = "spotify:track:3Dd04VaqlqGhGyiwvkMr1E";
             },
                         {
                 album =                 {
                     "album_type" = compilation;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/0LyfQWJT6nXafLPZqxe9Of";
                             };
                             href = "https://api.spotify.com/v1/artists/0LyfQWJT6nXafLPZqxe9Of";
                             id = 0LyfQWJT6nXafLPZqxe9Of;
                             name = "Various Artists";
                             type = artist;
                             uri = "spotify:artist:0LyfQWJT6nXafLPZqxe9Of";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/0G10FYsohoiHTVryy4K7t6";
                     };
                     href = "https://api.spotify.com/v1/albums/0G10FYsohoiHTVryy4K7t6";
                     id = 0G10FYsohoiHTVryy4K7t6;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b273c12363b20aba68ba83b05710";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e02c12363b20aba68ba83b05710";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d00004851c12363b20aba68ba83b05710";
                             width = 64;
                         }
                     );
                     name = "Magunvoster Riddim";
                     "release_date" = "2022-09-22";
                     "release_date_precision" = day;
                     "total_tracks" = 31;
                     type = album;
                     uri = "spotify:album:0G10FYsohoiHTVryy4K7t6";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/27Q1gq5X3JdtjQI46fk2OK";
                         };
                         href = "https://api.spotify.com/v1/artists/27Q1gq5X3JdtjQI46fk2OK";
                         id = 27Q1gq5X3JdtjQI46fk2OK;
                         name = "Jah Master";
                         type = artist;
                         uri = "spotify:artist:27Q1gq5X3JdtjQI46fk2OK";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 150804;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = UKXN22237034;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/5d9CQLAun228YEbmeF48qv";
                 };
                 href = "https://api.spotify.com/v1/tracks/5d9CQLAun228YEbmeF48qv";
                 id = 5d9CQLAun228YEbmeF48qv;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = Pakutanga;
                 popularity = 0;
                 "preview_url" = "https://p.scdn.co/mp3-preview/987890149e15c673f2cbd25329a10f89f1b8e86f?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 30;
                 type = track;
                 uri = "spotify:track:5d9CQLAun228YEbmeF48qv";
             },
                         {
                 album =                 {
                     "album_type" = album;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/40JuNvEnk3vufsyLg9WX5n";
                             };
                             href = "https://api.spotify.com/v1/artists/40JuNvEnk3vufsyLg9WX5n";
                             id = 40JuNvEnk3vufsyLg9WX5n;
                             name = "Maranatha! Kids";
                             type = artist;
                             uri = "spotify:artist:40JuNvEnk3vufsyLg9WX5n";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/4etZ3L8FcXKt7oYw5simPO";
                     };
                     href = "https://api.spotify.com/v1/albums/4etZ3L8FcXKt7oYw5simPO";
                     id = 4etZ3L8FcXKt7oYw5simPO;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b2736ea899845546da562dc7c555";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e026ea899845546da562dc7c555";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d000048516ea899845546da562dc7c555";
                             width = 64;
                         }
                     );
                     name = "40 Lagu Sekolah Minggu Abadi, Vol. 2";
                     "release_date" = "2010-03-20";
                     "release_date_precision" = day;
                     "total_tracks" = 40;
                     type = album;
                     uri = "spotify:album:4etZ3L8FcXKt7oYw5simPO";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/40JuNvEnk3vufsyLg9WX5n";
                         };
                         href = "https://api.spotify.com/v1/artists/40JuNvEnk3vufsyLg9WX5n";
                         id = 40JuNvEnk3vufsyLg9WX5n;
                         name = "Maranatha! Kids";
                         type = artist;
                         uri = "spotify:artist:40JuNvEnk3vufsyLg9WX5n";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 69880;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = IDA141702151;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/31G6p4fGNQ2ueU7w57y2sR";
                 };
                 href = "https://api.spotify.com/v1/tracks/31G6p4fGNQ2ueU7w57y2sR";
                 id = 31G6p4fGNQ2ueU7w57y2sR;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = "Tanda Paku";
                 popularity = 17;
                 "preview_url" = "https://p.scdn.co/mp3-preview/cb0be5e6afdf3b76644bbf77f0cb1378ad953bcd?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 14;
                 type = track;
                 uri = "spotify:track:31G6p4fGNQ2ueU7w57y2sR";
             },
                         {
                 album =                 {
                     "album_type" = album;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/7L0HY0Ql3BIJ2X1aq4ZAR7";
                             };
                             href = "https://api.spotify.com/v1/artists/7L0HY0Ql3BIJ2X1aq4ZAR7";
                             id = 7L0HY0Ql3BIJ2X1aq4ZAR7;
                             name = Zimpraise;
                             type = artist;
                             uri = "spotify:artist:7L0HY0Ql3BIJ2X1aq4ZAR7";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/7Cx2YJSj01Oloz7rT2XAUg";
                     };
                     href = "https://api.spotify.com/v1/albums/7Cx2YJSj01Oloz7rT2XAUg";
                     id = 7Cx2YJSj01Oloz7rT2XAUg;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b2739ced1431a72c4500ffe606f4";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e029ced1431a72c4500ffe606f4";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d000048519ced1431a72c4500ffe606f4";
                             width = 64;
                         }
                     );
                     name = "Hymns Night: Uncovering Ancient Wells (Live)";
                     "release_date" = "2015-07-10";
                     "release_date_precision" = day;
                     "total_tracks" = 28;
                     type = album;
                     uri = "spotify:album:7Cx2YJSj01Oloz7rT2XAUg";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/7L0HY0Ql3BIJ2X1aq4ZAR7";
                         };
                         href = "https://api.spotify.com/v1/artists/7L0HY0Ql3BIJ2X1aq4ZAR7";
                         id = 7L0HY0Ql3BIJ2X1aq4ZAR7;
                         name = Zimpraise;
                         type = artist;
                         uri = "spotify:artist:7L0HY0Ql3BIJ2X1aq4ZAR7";
                     }
                 );
                 "disc_number" = 2;
                 "duration_ms" = 292311;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = usdy41574457;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/6oQPqAB3nwde1e95vjqMsn";
                 };
                 href = "https://api.spotify.com/v1/tracks/6oQPqAB3nwde1e95vjqMsn";
                 id = 6oQPqAB3nwde1e95vjqMsn;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = "Pamsoro Pakudenga (Live)";
                 popularity = 11;
                 "preview_url" = "https://p.scdn.co/mp3-preview/532cc1619e37b12c8e4e7c78cf20159e8d48720a?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 9;
                 type = track;
                 uri = "spotify:track:6oQPqAB3nwde1e95vjqMsn";
             },
                         {
                 album =                 {
                     "album_type" = single;
                     artists =                     (
                                                 {
                             "external_urls" =                             {
                                 spotify = "https://open.spotify.com/artist/1LeKG234GMtDD9buGCusXk";
                             };
                             href = "https://api.spotify.com/v1/artists/1LeKG234GMtDD9buGCusXk";
                             id = 1LeKG234GMtDD9buGCusXk;
                             name = "Bravs Gino Stacksz & Tavv";
                             type = artist;
                             uri = "spotify:artist:1LeKG234GMtDD9buGCusXk";
                         }
                     );
                     "external_urls" =                     {
                         spotify = "https://open.spotify.com/album/2t2BU9bS07WDh6JezhBivI";
                     };
                     href = "https://api.spotify.com/v1/albums/2t2BU9bS07WDh6JezhBivI";
                     id = 2t2BU9bS07WDh6JezhBivI;
                     images =                     (
                                                 {
                             height = 640;
                             url = "https://i.scdn.co/image/ab67616d0000b273eae1bce54db506db3c99c9e4";
                             width = 640;
                         },
                                                 {
                             height = 300;
                             url = "https://i.scdn.co/image/ab67616d00001e02eae1bce54db506db3c99c9e4";
                             width = 300;
                         },
                                                 {
                             height = 64;
                             url = "https://i.scdn.co/image/ab67616d00004851eae1bce54db506db3c99c9e4";
                             width = 64;
                         }
                     );
                     name = "Bravs ft Gino Stacksz & Tavv - PakuruWine";
                     "release_date" = "2016-01-26";
                     "release_date_precision" = day;
                     "total_tracks" = 1;
                     type = album;
                     uri = "spotify:album:2t2BU9bS07WDh6JezhBivI";
                 };
                 artists =                 (
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/02tN2PRB4wWTAfAC9YFWHl";
                         };
                         href = "https://api.spotify.com/v1/artists/02tN2PRB4wWTAfAC9YFWHl";
                         id = 02tN2PRB4wWTAfAC9YFWHl;
                         name = "Ginostacksz Bravs Tavv";
                         type = artist;
                         uri = "spotify:artist:02tN2PRB4wWTAfAC9YFWHl";
                     },
                                         {
                         "external_urls" =                         {
                             spotify = "https://open.spotify.com/artist/3cvzTXam6qOsgfYvOQecS0";
                         };
                         href = "https://api.spotify.com/v1/artists/3cvzTXam6qOsgfYvOQecS0";
                         id = 3cvzTXam6qOsgfYvOQecS0;
                         name = GINOSTACKSZ;
                         type = artist;
                         uri = "spotify:artist:3cvzTXam6qOsgfYvOQecS0";
                     }
                 );
                 "disc_number" = 1;
                 "duration_ms" = 216000;
                 explicit = 0;
                 "external_ids" =                 {
                     isrc = SEYOK1604392;
                 };
                 "external_urls" =                 {
                     spotify = "https://open.spotify.com/track/3iJ2tWRvPqe7WBcfBfJyyv";
                 };
                 href = "https://api.spotify.com/v1/tracks/3iJ2tWRvPqe7WBcfBfJyyv";
                 id = 3iJ2tWRvPqe7WBcfBfJyyv;
                 "is_local" = 0;
                 "is_playable" = 1;
                 name = "Bravs ft Gino Stacksz & Tavv - PakuruWine (prod. Marrabeatsz)";
                 popularity = 14;
                 "preview_url" = "https://p.scdn.co/mp3-preview/f36bd7e3b84118c5e892145d5e5a1ecb7e4c3d90?cid=27492275f02f499e851bbaa579ef88ca";
                 "track_number" = 1;
                 type = track;
                 uri = "spotify:track:3iJ2tWRvPqe7WBcfBfJyyv";
             }
         );
         limit = 20;
         next = "https://api.spotify.com/v1/search?query=track%3APaku&type=track&market=ES&locale=en-US%2Cen%3Bq%3D0.9&offset=20&limit=20";
         offset = 0;
         previous = "<null>";
         total = 338;
     };
 }

 */
