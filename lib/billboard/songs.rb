class Billboard::Songs
attr_accessor :title, :artist, :delta, :previous, :peak, :duration, :rank, :trend
  @@all = [] 
  @@data = []
    def initialize(title, artist, delta, last, peak, duration, rank, trend)
      self.title = title
      self.artist = artist
      self.delta = delta
      self.trend = trend
      self.previous = last
      self.peak = peak
      self.duration = duration
      self.rank = rank
      @@all << self
      @@data << self
    end
        
    def self.data
      @@data
    end

    def self.list
      Billboard::Songs.data.each {|s| 
      puts "#{s.rank}. '#{s.title}', by #{s.artist.join(" ")}"
      }
    end

    def self.all
      @@all
    end

end