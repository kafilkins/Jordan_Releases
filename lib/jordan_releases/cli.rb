class JordanReleases::CLI
  def call
    puts "\nWelcome SneakerHead\n"
    list_months
    chosen_month
    end

    def list_months
      puts "Choose a month to see releases"
      @months = ["January", "February", "March", "April", "May", "June",
                              "July", "August", "September", "October", "November", "December"]

      @months.each.with_index(1) { |month, index| puts "#{index}. #{month}" }
    end

    def chosen_month
      chosen_month = gets.strip.to_i
      show_sneakers_for(chosen_month) if valid_month?(chosen_month, @months)
    end

    def valid_month?(input, data)
      input.to_i <= data.length && input.to_i > 0
    end

    def get_sneakers
      @sneakers = JordanReleases::Sneaker.all
    end

    def show_sneakers_for(chosen_month)
      month = @months[chosen_month - 1]
      month.Sneaker.month
      puts "Here are the releases for #{month}"
      month.sneakers.each.with_index(1) do |event, index|
        puts "#{index}. #{sneaker.name}"
      end
      get_sneakers(month)
    end

    def show_release_date(chosen_month)
      puts "choose a sneaker to see release date"
      input = gets.strip
      month = @months[chosen_month - 1]
      date = sneaker.release_date[input.to_i -1]
      puts "Here is the release date for #{sneaker.name}"
      date
    end

    def get_sneakers
      @months = JordanReleases::Sneaker.all
    end

    def next_steps
      puts "Would you like to see another sneaker release date?"
      @input = gets.strip
    end

    def complete
      puts "Good Luck"
    end

end
