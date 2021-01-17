class JordanReleases::CLI
  def call
    puts "\nWelcome SneakerHead\n"
  #  @input = ""
  #  until @input == "exit"
    give_months
      case get_chosen_month
      when 1
        january_sneaker_releases
        list_sneakers
        release_day
        get_chosen_month
      when 2
        february_sneaker_releases
        list_sneakers
        release_day
      when 3
        march_sneaker_releases
        list_sneakers
        release_day
      when 4
        april_sneaker_releases
        list_sneakers
        release_day
      when 5
        may_sneaker_releases
        list_sneakers
        release_day
      when 6
        june_sneaker_releases
        list_sneakers
        release_day
      else
        puts "invalid"
    end
    complete
  end

    def give_months
      @months = ["January", "February", "March", "April", "May", "June"]
      puts "Choose a month to see sneaker releases"
      @months.each.with_index(1) do |month, index|
        puts "#{index}. #{month}"
    end
    end

    def list_sneakers
      puts "Jordan 11"
    end

    def release_day
      puts "Would you like to see the release day for your selection?"
      input = gets.strip
      if input == "yes"
        puts "January 10th"
      elsif input == "no"
        puts "Would you like to see another month or exit?"
      elsif input == "yes"
        give_months
        input = gets.strip
        get_chosen_month
      else input == "no"
        complete
      end
end

    def get_chosen_month
      chosen_month = gets.strip.to_i
      chosen_month if valid_month?(chosen_month, @months)
    end

    def valid_month?(input, data)
      input.to_i <= data.length && input.to_i > 0
    end

    def january_sneaker_releases
      puts "Here are the releases for January"
    end

    def february_sneaker_releases
      puts "Here are the releases for February"
    end

    def march_sneaker_releases
      puts "Here are the releases for March"
    end

    def april_sneaker_releases
      puts "Here are the releases for April"
    end

    def may_sneaker_releases
      puts "Here are the releases for May"
    end

    def june_sneaker_releases
      puts "Here are the releases for June"
    end


    def next_steps
      puts "Would you like to see another month (yes) or exit (no)?"
      input = gets.strip
    end

    def complete
      puts "Would you like to see another month (yes) or exit (no)?"
      input = gets.strip
      if input == "yes"
        give_months
      else input == "no"
      puts "Good Luck"
    end
  end

end
