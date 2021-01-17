class JordanReleases::CLI
  def call
    puts "\nWelcome SneakerHead\n"
    @input = ""
    until @input == "exit"
      get_months
      get_chosen_month
      what_next
    end
    complete
    end

    def get_months
      @months = ["January", "February", "March", "April", "May", "June"]
      puts "Choose a month to see sneaker releases"
      @months.each.with_index(1) do |month, index|
        puts "#{index}. #{month}"
    end
    end

    def get_chosen_month
      chosen_month = gets.strip.to_i
      show_sneakers_for(chosen_month) if valid_month?(chosen_month, @months)
    end

    def valid_month?(input, data)
      input.to_i <= data.length && input.to_i > 0
    end

    def show_sneakers_for(chosen_month)
      month = @months[chosen_month - 1]
      month.get_sneakers
      puts "Here are the releases for #{month.name}"
      month.sneakers.each.with_index(1) do |sneaker, index|
        puts "#{index}. #{sneaker.name}"
      end
      show_release_date(month)
    end

    def show_release_date(sneaker)
      puts "Choose a sneaker to see release date"
      input = gets.strip
      date = sneaker.month[input.to_i - 1]
      date(sneaker)
    end

    def next_steps
      puts "Would you like to see another sneaker release date?"
      @input = gets.strip
    end

    def complete
      puts "Good Luck"
    end

end
