resource "spotify_playlist" "Marathi" {
  name = "Marathi_Songs"
  tracks = ["14M0pSvqNEhPdByBNw159R"]
}

data "spotify_search_track" "Ajay-Atul" {
  artist = "Ajay-Atul"
}

resource "spotify_playlist" "Ajay_Atul_songs" {
  name = "Ajay-Atul"
  tracks = [data.spotify_search_track.Ajay-Atul.tracks[0].id,
  data.spotify_search_track.Ajay-Atul.tracks[1].id,
  data.spotify_search_track.Ajay-Atul.tracks[3].id]
}