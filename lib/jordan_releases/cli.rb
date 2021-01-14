class JordanReleases::CLI
  def call
    puts "\nWelcome SneakerHead\n"
    get_available_months
    get_user_month
    chosen_month
    show_sneakers
    #get user input, ask for a month
    #get sneaker releases for that month
    #get user input, select from info provided for specific release date
    end

    def get_available_months
      @months = JordanReleases::Month.all
    end

    def get_user_month
      puts "Choose a month to see releases"
      @months.each.with_index(1) { |month, index| puts "#{index} #{month.name}"}
    end

    def chosen_month
      chosen_month = gets.strip.to_i
      show_sneakers(chosen_month) if valid_month?(chosen_month, @months)
    end

    def valid_month?(input, data)
      input.to_i <= data.length && input.to_i > 0
    end

    def show_sneakers(chosen_month)
      month = @months[chosen_month - 1]

    end

end
