//
//  SongRecommendations.swift
//  SpotifyPoC
//
//  Created by Adrian Richton Co on 10/3/22.
//

import Foundation

struct SongRecommendations: Codable {
    let tracks: [Track]
}

struct Track: Codable{
//    let limit: Int
    let id: String
    let uri: String
    let artists: [Artist]
    let name: String
}

struct Artist: Codable {
    let name: String
}

//
//struct Item: Codable {
////    let album: Album
//
//}
//{
/*
seeds =     (
            {
        afterFilteringSize = 0;
        afterRelinkingSize = 0;
        href = "<null>";
        id = "canadian contemporary r";
        initialPoolSize = 0;
        type = GENRE;
    },
            {
        afterFilteringSize = 524;
        afterRelinkingSize = 524;
        href = "https://api.spotify.com/v1/artists/1Xyo4u8uXC1ZmMpatF05PJ";
        id = 1Xyo4u8uXC1ZmMpatF05PJ;
        initialPoolSize = 524;
        type = ARTIST;
    },
            {
        afterFilteringSize = 0;
        afterRelinkingSize = 0;
        href = "https://api.spotify.com/v1/tracks/4yP0hdKOZPNshxUOjY0cZj";
        id = 4yP0hdKOZPNshxUOjY0cZj;
        initialPoolSize = 0;
        type = TRACK;
    }
);
tracks =     (
            {
        album =             {
            "album_type" = SINGLE;
            artists =                 (
                                    {
                    "external_urls" =                         {
                        spotify = "https://open.spotify.com/artist/7CajNmpbOovFoOoasH2HaY";
                    };
                    href = "https://api.spotify.com/v1/artists/7CajNmpbOovFoOoasH2HaY";
                    id = 7CajNmpbOovFoOoasH2HaY;
                    name = "Calvin Harris";
                    type = artist;
                    uri = "spotify:artist:7CajNmpbOovFoOoasH2HaY";
                },
                                    {
                    "external_urls" =                         {
                        spotify = "https://open.spotify.com/artist/1Xyo4u8uXC1ZmMpatF05PJ";
                    };
                    href = "https://api.spotify.com/v1/artists/1Xyo4u8uXC1ZmMpatF05PJ";
                    id = 1Xyo4u8uXC1ZmMpatF05PJ;
                    name = "The Weeknd";
                    type = artist;
                    uri = "spotify:artist:1Xyo4u8uXC1ZmMpatF05PJ";
                }
            );
            "external_urls" =                 {
                spotify = "https://open.spotify.com/album/3GPiefSRSOxqTrgKJIB7RL";
            };
            href = "https://api.spotify.com/v1/albums/3GPiefSRSOxqTrgKJIB7RL";
            id = 3GPiefSRSOxqTrgKJIB7RL;
            images =                 (
                                    {
                    height = 640;
                    url = "https://i.scdn.co/image/ab67616d0000b273e5e19455ff5f76c58048bea8";
                    width = 640;
                },
                                    {
                    height = 300;
                    url = "https://i.scdn.co/image/ab67616d00001e02e5e19455ff5f76c58048bea8";
                    width = 300;
                },
                                    {
                    height = 64;
                    url = "https://i.scdn.co/image/ab67616d00004851e5e19455ff5f76c58048bea8";
                    width = 64;
                }
            );
            name = "Over Now (with The Weeknd)";
            "release_date" = "2020-08-28";
            "release_date_precision" = day;
            "total_tracks" = 1;
            type = album;
            uri = "spotify:album:3GPiefSRSOxqTrgKJIB7RL";
        };
        artists =             (
                            {
                "external_urls" =                     {
                    spotify = "https://open.spotify.com/artist/7CajNmpbOovFoOoasH2HaY";
                };
                href = "https://api.spotify.com/v1/artists/7CajNmpbOovFoOoasH2HaY";
                id = 7CajNmpbOovFoOoasH2HaY;
                name = "Calvin Harris";
                type = artist;
                uri = "spotify:artist:7CajNmpbOovFoOoasH2HaY";
            },
                            {
                "external_urls" =                     {
                    spotify = "https://open.spotify.com/artist/1Xyo4u8uXC1ZmMpatF05PJ";
                };
                href = "https://api.spotify.com/v1/artists/1Xyo4u8uXC1ZmMpatF05PJ";
                id = 1Xyo4u8uXC1ZmMpatF05PJ;
                name = "The Weeknd";
                type = artist;
                uri = "spotify:artist:1Xyo4u8uXC1ZmMpatF05PJ";
            }
        );
        "disc_number" = 1;
        "duration_ms" = 210795;
        explicit = 1;
        "external_ids" =             {
            isrc = GBARL2000986;
        };
        "external_urls" =             {
            spotify = "https://open.spotify.com/track/58AGoOGbwsQMhBbH0eFLRR";
        };
        href = "https://api.spotify.com/v1/tracks/58AGoOGbwsQMhBbH0eFLRR";
        id = 58AGoOGbwsQMhBbH0eFLRR;
        "is_local" = 0;
        "is_playable" = 1;
        name = "Over Now (with The Weeknd)";
        popularity = 71;
        "preview_url" = "https://p.scdn.co/mp3-preview/2b782f012a04d41a131c0438f2209893c6d1e450?cid=27492275f02f499e851bbaa579ef88ca";
        "track_number" = 1;
        type = track;
        uri = "spotify:track:58AGoOGbwsQMhBbH0eFLRR";
    },
            {
        album =             {
            "album_type" = ALBUM;
            artists =                 (
                                    {
                    "external_urls" =                         {
                        spotify = "https://open.spotify.com/artist/1Xyo4u8uXC1ZmMpatF05PJ";
                    };
                    href = "https://api.spotify.com/v1/artists/1Xyo4u8uXC1ZmMpatF05PJ";
                    id = 1Xyo4u8uXC1ZmMpatF05PJ;
                    name = "The Weeknd";
                    type = artist;
                    uri = "spotify:artist:1Xyo4u8uXC1ZmMpatF05PJ";
                }
            );
            "external_urls" =                 {
                spotify = "https://open.spotify.com/album/4yP0hdKOZPNshxUOjY0cZj";
            };
            href = "https://api.spotify.com/v1/albums/4yP0hdKOZPNshxUOjY0cZj";
            id = 4yP0hdKOZPNshxUOjY0cZj;
            images =                 (
                                    {
                    height = 640;
                    url = "https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36";
                    width = 640;
                },
                                    {
                    height = 300;
                    url = "https://i.scdn.co/image/ab67616d00001e028863bc11d2aa12b54f5aeb36";
                    width = 300;
                },
                                    {
                    height = 64;
                    url = "https://i.scdn.co/image/ab67616d000048518863bc11d2aa12b54f5aeb36";
                    width = 64;
                }
            );
            name = "After Hours";
            "release_date" = "2020-03-20";
            "release_date_precision" = day;
            "total_tracks" = 14;
            type = album;
            uri = "spotify:album:4yP0hdKOZPNshxUOjY0cZj";
        };
        artists =             (
                            {
                "external_urls" =                     {
                    spotify = "https://open.spotify.com/artist/1Xyo4u8uXC1ZmMpatF05PJ";
                };
                href = "https://api.spotify.com/v1/artists/1Xyo4u8uXC1ZmMpatF05PJ";
                id = 1Xyo4u8uXC1ZmMpatF05PJ;
                name = "The Weeknd";
                type = artist;
                uri = "spotify:artist:1Xyo4u8uXC1ZmMpatF05PJ";
            }
        );
        "disc_number" = 1;
        "duration_ms" = 215626;
        explicit = 1;
        "external_ids" =             {
            isrc = USUG12000658;
        };
        "external_urls" =             {
            spotify = "https://open.spotify.com/track/5QO79kh1waicV47BqGRL3g";
        };
        href = "https://api.spotify.com/v1/tracks/5QO79kh1waicV47BqGRL3g";
        id = 5QO79kh1waicV47BqGRL3g;
        "is_local" = 0;
        "is_playable" = 1;
        name = "Save Your Tears";
        popularity = 89;
        "preview_url" = "<null>";
        "track_number" = 11;
        type = track;
        uri = "spotify:track:5QO79kh1waicV47BqGRL3g";
    },
            {
        album =             {
            "album_type" = SINGLE;
            artists =                 (
                                    {
                    "external_urls" =                         {
                        spotify = "https://open.spotify.com/artist/7jVv8c5Fj3E9VhNjxT4snq";
                    };
                    href = "https://api.spotify.com/v1/artists/7jVv8c5Fj3E9VhNjxT4snq";
                    id = 7jVv8c5Fj3E9VhNjxT4snq;
                    name = "Lil Nas X";
                    type = artist;
                    uri = "spotify:artist:7jVv8c5Fj3E9VhNjxT4snq";
                },
                                    {
                    "external_urls" =                         {
                        spotify = "https://open.spotify.com/artist/7wlFDEWiM5OoIAt8RSli8b";
                    };
                    href = "https://api.spotify.com/v1/artists/7wlFDEWiM5OoIAt8RSli8b";
                    id = 7wlFDEWiM5OoIAt8RSli8b;
                    name = "YoungBoy Never Broke Again";
                    type = artist;
                    uri = "spotify:artist:7wlFDEWiM5OoIAt8RSli8b";
                }
            );
            "external_urls" =                 {
                spotify = "https://open.spotify.com/album/0KmzOXbNJa5oTpxdCBhmHd";
            };
            href = "https://api.spotify.com/v1/albums/0KmzOXbNJa5oTpxdCBhmHd";
            id = 0KmzOXbNJa5oTpxdCBhmHd;
            images =                 (
                                    {
                    height = 640;
                    url = "https://i.scdn.co/image/ab67616d0000b273d6fac83a4a26f069e3e4e44e";
                    width = 640;
                },
                                    {
                    height = 300;
                    url = "https://i.scdn.co/image/ab67616d00001e02d6fac83a4a26f069e3e4e44e";
                    width = 300;
                },
                                    {
                    height = 64;
                    url = "https://i.scdn.co/image/ab67616d00004851d6fac83a4a26f069e3e4e44e";
                    width = 64;
                }
            );
            name = "Late To Da Party (F*CK BET) (feat. YoungBoy Never Broke Again)";
            "release_date" = "2022-06-24";
            "release_date_precision" = day;
            "total_tracks" = 1;
            type = album;
            uri = "spotify:album:0KmzOXbNJa5oTpxdCBhmHd";
        };
        artists =             (
                            {
                "external_urls" =                     {
                    spotify = "https://open.spotify.com/artist/7jVv8c5Fj3E9VhNjxT4snq";
                };
                href = "https://api.spotify.com/v1/artists/7jVv8c5Fj3E9VhNjxT4snq";
                id = 7jVv8c5Fj3E9VhNjxT4snq;
                name = "Lil Nas X";
                type = artist;
                uri = "spotify:artist:7jVv8c5Fj3E9VhNjxT4snq";
            },
                            {
                "external_urls" =                     {
                    spotify = "https://open.spotify.com/artist/7wlFDEWiM5OoIAt8RSli8b";
                };
                href = "https://api.spotify.com/v1/artists/7wlFDEWiM5OoIAt8RSli8b";
                id = 7wlFDEWiM5OoIAt8RSli8b;
                name = "YoungBoy Never Broke Again";
                type = artist;
                uri = "spotify:artist:7wlFDEWiM5OoIAt8RSli8b";
            }
        );
        "disc_number" = 1;
        "duration_ms" = 180666;
        explicit = 1;
        "external_ids" =             {
            isrc = USSM12206206;
        };
        "external_urls" =             {
            spotify = "https://open.spotify.com/track/3GbQcjKWT7eVpUfzqwUjxv";
        };
        href = "https://api.spotify.com/v1/tracks/3GbQcjKWT7eVpUfzqwUjxv";
        id = 3GbQcjKWT7eVpUfzqwUjxv;
        "is_local" = 0;
        "is_playable" = 1;
        name = "Late To Da Party (F*CK BET) (feat. YoungBoy Never Broke Again)";
        popularity = 73;
        "preview_url" = "https://p.scdn.co/mp3-preview/640375a7e9c79dd08e4d08f73d961271065be9e3?cid=27492275f02f499e851bbaa579ef88ca";
        "track_number" = 1;
        type = track;
        uri = "spotify:track:3GbQcjKWT7eVpUfzqwUjxv";
    },
            {
        album =             {
            "album_type" = ALBUM;
            artists =                 (
                                    {
                    "external_urls" =                         {
                        spotify = "https://open.spotify.com/artist/69GGBxA162lTqCwzJG5jLp";
                    };
                    href = "https://api.spotify.com/v1/artists/69GGBxA162lTqCwzJG5jLp";
                    id = 69GGBxA162lTqCwzJG5jLp;
                    name = "The Chainsmokers";
                    type = artist;
                    uri = "spotify:artist:69GGBxA162lTqCwzJG5jLp";
                }
            );
            "external_urls" =                 {
                spotify = "https://open.spotify.com/album/4nZ4dv1XvDE25Lf2MFhOqA";
            };
            href = "https://api.spotify.com/v1/albums/4nZ4dv1XvDE25Lf2MFhOqA";
            id = 4nZ4dv1XvDE25Lf2MFhOqA;
            images =                 (
                                    {
                    height = 640;
                    url = "https://i.scdn.co/image/ab67616d0000b273e741cd9dc139d57cc2906186";
                    width = 640;
                },
                                    {
                    height = 300;
                    url = "https://i.scdn.co/image/ab67616d00001e02e741cd9dc139d57cc2906186";
                    width = 300;
                },
                                    {
                    height = 64;
                    url = "https://i.scdn.co/image/ab67616d00004851e741cd9dc139d57cc2906186";
                    width = 64;
                }
            );
            name = "So Far So Good";
            "release_date" = "2022-06-08";
            "release_date_precision" = day;
            "total_tracks" = 16;
            type = album;
            uri = "spotify:album:4nZ4dv1XvDE25Lf2MFhOqA";
        };
        artists =             (
                            {
                "external_urls" =                     {
                    spotify = "https://open.spotify.com/artist/69GGBxA162lTqCwzJG5jLp";
                };
                href = "https://api.spotify.com/v1/artists/69GGBxA162lTqCwzJG5jLp";
                id = 69GGBxA162lTqCwzJG5jLp;
                name = "The Chainsmokers";
                type = artist;
                uri = "spotify:artist:69GGBxA162lTqCwzJG5jLp";
            }
        );
        "disc_number" = 1;
        "duration_ms" = 185522;
        explicit = 0;
        "external_ids" =             {
            isrc = USQX92105841;
        };
        "external_urls" =             {
            spotify = "https://open.spotify.com/track/2FqkTu4FhwDWn9hzEaWWCE";
        };
        href = "https://api.spotify.com/v1/tracks/2FqkTu4FhwDWn9hzEaWWCE";
        id = 2FqkTu4FhwDWn9hzEaWWCE;
        "is_local" = 0;
        "is_playable" = 1;
        name = "I Love U";
        popularity = 69;
        "preview_url" = "https://p.scdn.co/mp3-preview/74c1a5534c4d1513d365addd51a0fa7cc4a2644d?cid=27492275f02f499e851bbaa579ef88ca";
        "track_number" = 7;
        type = track;
        uri = "spotify:track:2FqkTu4FhwDWn9hzEaWWCE";
    },
            {
        album =             {
            "album_type" = ALBUM;
            artists =                 (
                                    {
                    "external_urls" =                         {
                        spotify = "https://open.spotify.com/artist/25uiPmTg16RbhZWAqwLBy5";
                    };
                    href = "https://api.spotify.com/v1/artists/25uiPmTg16RbhZWAqwLBy5";
                    id = 25uiPmTg16RbhZWAqwLBy5;
                    name = "Charli XCX";
                    type = artist;
                    uri = "spotify:artist:25uiPmTg16RbhZWAqwLBy5";
                }
            );
            "external_urls" =                 {
                spotify = "https://open.spotify.com/album/1QqipMXWzJhr6yfcNKTp8B";
            };
            href = "https://api.spotify.com/v1/albums/1QqipMXWzJhr6yfcNKTp8B";
            id = 1QqipMXWzJhr6yfcNKTp8B;
            images =                 (
                                    {
                    height = 640;
                    url = "https://i.scdn.co/image/ab67616d0000b273f629eb64fd8ef76a97b154f5";
                    width = 640;
                },
                                    {
                    height = 300;
                    url = "https://i.scdn.co/image/ab67616d00001e02f629eb64fd8ef76a97b154f5";
                    width = 300;
                },
                                    {
                    height = 64;
                    url = "https://i.scdn.co/image/ab67616d00004851f629eb64fd8ef76a97b154f5";
                    width = 64;
                }
            );
            name = CRASH;
            "release_date" = "2022-03-18";
            "release_date_precision" = day;
            "total_tracks" = 12;
            type = album;
            uri = "spotify:album:1QqipMXWzJhr6yfcNKTp8B";
        };
        artists =             (
                            {
                "external_urls" =                     {
                    spotify = "https://open.spotify.com/artist/25uiPmTg16RbhZWAqwLBy5";
                };
                href = "https://api.spotify.com/v1/artists/25uiPmTg16RbhZWAqwLBy5";
                id = 25uiPmTg16RbhZWAqwLBy5;
                name = "Charli XCX";
                type = artist;
                uri = "spotify:artist:25uiPmTg16RbhZWAqwLBy5";
            }
        );
        "disc_number" = 1;
        "duration_ms" = 145840;
        explicit = 0;
        "external_ids" =             {
            isrc = GBAHS2200045;
        };
        "external_urls" =             {
            spotify = "https://open.spotify.com/track/5dry5tz8yLcLuOJ3l6ZEQd";
        };
        href = "https://api.spotify.com/v1/tracks/5dry5tz8yLcLuOJ3l6ZEQd";
        id = 5dry5tz8yLcLuOJ3l6ZEQd;
        "is_local" = 0;
        "is_playable" = 1;
        name = "Used To Know Me";
        popularity = 68;
        "preview_url" = "https://p.scdn.co/mp3-preview/c3a762abea154a61d56feb9c29e206ab0ebee032?cid=27492275f02f499e851bbaa579ef88ca";
        "track_number" = 11;
        type = track;
        uri = "spotify:track:5dry5tz8yLcLuOJ3l6ZEQd";
    }
);
}
*/
