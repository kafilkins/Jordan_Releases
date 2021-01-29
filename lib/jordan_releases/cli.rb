class JordanReleases::CLI
  def call
    puts "\nWelcome SneakerHead\n"
    @input = ""
    give_months
      until @input == "exit"
          case get_chosen_month
      when 1
        sneaker_releases("Jan", "01")
        release_titles
      when 2
        sneaker_releases("Feb", "02")
        release_titles
      when 3
        sneaker_releases("Mar", "03")
        release_titles
      when 4
        sneaker_releases("Apr", "04")
        release_titles
      when 5
        sneaker_releases("May", "05")
        release_titles
      when 6
        sneaker_releases("Jun", "06")
        release_titles
      else
        puts "invalid"
      end
    end
  end

    def give_months
      @months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]
      puts "Choose a number to see sneaker releases for that month"
      @months.each.with_index(1) do |month, index|
        puts "#{index}. #{month}"
    end
  end

  def get_chosen_month
    chosen_month = gets.strip.to_i
    chosen_month if valid_month?(chosen_month, @months)
  end

  def valid_month?(input, data)
    @input.to_i <= data.length && input.to_i > 0
  end

    def release_titles
      puts "Would you like to see the release days for each sneaker (yes), see another (month), or exit (exit)?"
      @input = gets.strip
      if @input == "exit"
        complete
      elsif @input == "month"
        give_months
      elsif @input == "yes"
          exact_date(@month)
          next_steps
        else
          puts "invalid"
          release_titles
        end
    end

    def exact_date(month)
    puts "Please confirm by re-typing the number associated with the month selected..."
      @input = gets.strip.to_i
      if @input == 1
        sneaker_release_date("Jan")
      elsif @input == 2
        sneaker_release_date("Feb")
      elsif @input == 3
        sneaker_release_date("Mar")
      elsif @input == 4
        sneaker_release_date("Apr")
      elsif @input == 5
        sneaker_release_date("May")
      elsif @input == 6
        sneaker_release_date("Jun")
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

    def sneaker_releases(month, month_url)
      puts "Here are the releases for #{month}"
      JordanReleases::Scraper.scrape_sneaker_by_month(month_url)
      JordanReleases::Sneaker.release_month(month)
      JordanReleases::Sneaker.sneaker_title(month)
    end

    def sneaker_release_date(month)
        JordanReleases::Sneaker.sneaker_release_date(month)
      end

    def complete
      puts "Good Luck"
    end

end
