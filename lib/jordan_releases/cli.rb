class JordanReleases::CLI
  def call
    puts "\nWelcome SneakerHead\n"
    @input = ""
    give_months
      until @input == "exit"
          case get_chosen_month
      when 1
        sneaker_releases("Jan", "01")
        sneaker_release_date("Jan")
      when 2
        sneaker_releases("Feb", "02")
        sneaker_release_date("Feb")
      when 3
        sneaker_releases("Mar", "03")
        sneaker_release_date("Mar")
      when 4
        sneaker_releases("Apr", "04")
        sneaker_release_date("Apr")
      when 5
        sneaker_releases("May", "05")
        sneaker_release_date("May")
      when 6
        sneaker_releases("Jun", "06")
        sneaker_release_date("Jun")
      else
        puts "invalid"
      end
    end
  end

    def give_months
      @months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]
      puts "Choose a month to see sneaker releases"
      @months.each.with_index(1) do |month, index|
        puts "#{index}. #{month}"
    end
  end

    def release_titles
      puts "Would you like to see the release days for each sneaker (yes), see another (month), or exit (exit)?"
      @input = gets.strip
      if @input == "exit"
        complete
      elsif @input == "month"
        give_months
      elsif @input == "yes"
          exact_date
          next_steps
        else
          puts "invalid"
          release_titles
        end
    end

    def sneaker_release_date(month)
        JordanReleases::Sneaker.release_month(month)
      end

    def exact_date
      puts "Type month..."
      @input = gets.strip
      if @input == "Jan"
        JordanReleases::Sneaker.title_release_day_jan
      elsif @input == "Feb"
        JordanReleases::Sneaker.title_release_day_feb
      elsif @input == "Mar"
        JordanReleases::Sneaker.title_release_day_mar
      elsif @input == "Apr"
        JordanReleases::Sneaker.title_release_day_apr
      elsif @input == "May"
        JordanReleases::Sneaker.title_release_day_may
      elsif @input == "Jun"
        JordanReleases::Sneaker.title_release_day_jun
      else
        puts "invalid"
        exact_date
      end
      end

    def next_steps
      puts "Would you like to see another month (month) or exit (exit)?"
      @input = gets.strip
    if @input == "exit"
      complete
    elsif @input == "month"
        give_months
      else
        puts "invalid"
        next_steps
      end
    end

    def get_chosen_month
      chosen_month = gets.strip.to_i
      chosen_month if valid_month?(chosen_month, @months)
    end

    def valid_month?(input, data)
      @input.to_i <= data.length && input.to_i > 0
    end

    def sneaker_releases(month, month_url)
      puts "Here are the releases for #{month}"
      JordanReleases::Scraper.scrape_sneaker_by_month(month_url)
      JordanReleases::Sneaker.release_month(month)
      JordanReleases::Sneaker.sneaker_name(month)
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
      JordanReleases::Scraper.scrape_sneaker_title_march
      JordanReleases::Sneaker.sneaker_name_mar
    end

    def april_sneaker_releases
      puts "Here are the releases for April"
      JordanReleases::Scraper.scrape_sneaker_title_april
      JordanReleases::Sneaker.sneaker_name_apr
    end

    def may_sneaker_releases
      puts "Here are the releases for May"
      JordanReleases::Scraper.scrape_sneaker_title_may
      JordanReleases::Sneaker.sneaker_name_may
    end

    def june_sneaker_releases
      puts "Here are the releases for June"
      JordanReleases::Scraper.scrape_sneaker_title_june
      JordanReleases::Sneaker.sneaker_name_jun
    end

    def complete
      puts "Good Luck"
    end

end
