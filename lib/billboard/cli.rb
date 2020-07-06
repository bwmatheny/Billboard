

class Billboard::CLI
    def call
        chart_length
        menu
    end

    def chart_length
        puts "\nHow many top songs would you like to see this week? 1-100\n"
        input = gets.strip.to_i
        while input > 100 || input < 1
            if input > 100
                puts "\nWaoh, That's WAYY too many!!\n"
            elsif input < 1
                puts "\nWhat are you trying to pull here?!?!\n"
                puts "How many top songs would you like to see this week? 1-100"
            end
            input = gets.strip.to_i
        end
        get_songs(input)
    end

    def get_songs(input)
        puts "\nTop #{input} songs for this Week:\n"
        Billboard::Scraper.new(input)
    end

    def list_songs
     puts "\nTop #{Billboard::Songs.all.count} Songs this Week:\n"
     Billboard::Songs.all.each {|s| 
     puts "#{s.rank}. '#{s.title}', by #{s.string}"
     }
    end

    def menu
        input = nil
        while input != "exit"

            puts "\nSelect the song you want more info on or type list to return or exit:"

            input = gets.strip.downcase
            if input.to_i > 0 && input.to_i <= Billboard::Songs.all.count
                Billboard::Songs.description(input.to_i)
            elsif input == "list"
                list_songs
            elsif input == "exit"
                goodbye
            else
                puts "\nInvalid Input\n"
            end
        end
    end

    def goodbye
        puts "\nCheck back next week for a new list!\n"
    end
end