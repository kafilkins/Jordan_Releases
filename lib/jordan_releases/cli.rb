class JordanReleases::CLI
  def call
    puts "\nWelcome SneakerHead\n"
    @input = ""
    give_months
      until @input == "exit"
          case get_chosen_month
      when 1
        january_sneaker_releases
        release_titles
      when 2
        february_sneaker_releases
        release_titles
      when 3
        march_sneaker_releases
        release_titles
      when 4
        april_sneaker_releases
        release_titles
      when 5
        may_sneaker_releases
        release_titles
      when 6
        june_sneaker_releases
        release_titles
      else
        puts "invalid"
      end
    end
  end

    def give_months
      @months = ["January", "February", "March", "April", "May", "June"]
      puts "Choose a month to see sneaker releases"
      @months.each.with_index(1) do |month, index|
        puts "#{index}. #{month}"
    end
  end

    def release_titles
      puts "Would you like to see the release days for a each sneaker (yes), see another (month), or exit (exit)?"
      @input = gets.strip
      if @input == "exit"
        complete
      elsif @input == "month"
        give_months
      else @input == "yes"
          exact_date
          next_steps
        end
    end

    def exact_date
      JordanReleases::Sneaker.title_release_day_jan
    end

    def next_steps
      puts "Would you like to see another month (month) or exit (exit)?"
      @input = gets.strip
    if @input == "exit"
      complete
    else @input == "month"
        give_months
      end
    end

    def get_chosen_month
      chosen_month = gets.strip.to_i
      chosen_month if valid_month?(chosen_month, @months)
    end

    def valid_month?(input, data)
      @input.to_i <= data.length && input.to_i > 0
    end

    def january_sneaker_releases
      puts "Here are the releases for January"
      JordanReleases::Scraper.scrape_sneaker_title_january
      JordanReleases::Sneaker.sneaker_name_jan
    end

    def february_sneaker_releases
      puts "Here are the releases for February"
      JordanReleases::Scraper.scrape_sneaker_title_february
      JordanReleases::Sneaker.sneaker_name_feb
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

    def complete
      puts "Good Luck"
    end

end
