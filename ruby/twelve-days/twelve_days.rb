class TwelveDays
    def self.song
      song_file = File.expand_path('../song.txt', __FILE__)
      IO.read(song_file)
    end
    VERSION = 1
end