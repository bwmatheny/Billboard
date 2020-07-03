class Billboard::Info




    def self.description(input)
        x = Billboard::Songs.all[input - 1] 
        r = rand(100)
        case x.artist
            when Array
                if
                x.artist.count == 2
                x.title << ", #{x.artist[1]}"
                x.artist = x.artist[0]
                elsif x.artist.count == 1
                x.artist = x.artist.join
                end
            end
    
        if x.rank == 1 && x.delta > 0
    
            puts "\n Climbing to the top this week, #{x.artist} rises to the Number #{x.rank} song in the country with '#{x.title}'\n"
    
        elsif x.rank == 1 && x.trend == "Steady"
            puts "\nClinging to number #{x.rank} again this week, #{x.artist} remains at the top with '#{x.title}'\n"
            
        elsif x.trend == "New" && r.even?
            puts "\nComing in this week at Number #{x.rank}, is #{x.title}, by #{x.artist}, for the first time on the Charts\n"
    
        elsif x.trend == "New" && r.odd?
            puts "\nEntering the charts #{x.artist} debuts at number #{x.rank}, with #{x.title}\n"
    
        elsif x.delta.abs() == 1 && r.even?
            puts "\nAfter #{x.duration} weeks on the chart #{x.artist} #{x.trend.gsub("Rising", "rises").gsub("Falling", "falls")} one spot to Number #{x.rank} this week with '#{x.title}'\n"
    
        elsif x.delta.abs() == 1 && r.odd?
            puts "\n#{x.trend} #{x.delta} spot this week to Number #{x.rank} in the countdown, #{x.artist}, brings you '#{x.title}'\n"
    
        elsif x.peak < x.rank && x.trend == "Falling"
            puts "\nPeaking all the way at Number #{x.peak}. #{x.artist}'s song '#{x.title}' falls by #{x.delta} to number #{x.rank} this week.\n"
    
        elsif x.delta > 0 && x.peak < x.rank && r.even?
            puts "\nClimbing their way back up the charts #{x.artist}'s track, '#{x.title}', comes in at Number #{x.rank} this week after being Number #{x.previous}.\n"
    
        elsif x.delta > 0 && x.peak < x.rank && r.odd?
            puts "\nAfter Falling from Number #{x.peak}, #{x.artist} climbs back up to Number #{x.rank} this week from #{x.previous}with #title\n"
    
        elsif x.trend == "Steady" && r.even?
            puts "\nHolding strong this week #{x.artist} holds on to the Number #{x.rank} spot again with '#{x.title}'\n"
    
        elsif x.trend == "Steady" && r.odd?
            puts "\nRemaining at Number #{x.rank} again this week is #{x.artist}'s track #{x.title}\n"

        elsif x.delta.abs() > 1 && r.even?
            puts "\nAfter #{x.duration} weeks on the chart #{x.artist} #{x.trend.gsub("Rising", "rises").gsub("Falling", "falls")} #{x.delta} spots to Number #{x.rank} this week with '#{x.title}'\n"

        elsif x.delta.abs() > 1 && r.odd?
            puts "\n#{x.trend} #{x.delta.abs()} spots over the last week, #{x.title}, by #{x.artist}\n"
            
        end
    
    end
end
