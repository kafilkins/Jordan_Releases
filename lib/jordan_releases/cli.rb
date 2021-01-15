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
      show_sneakers(chosen_month) if valid_month?(chosen_month, @months)
    end

    def valid_month?(input, data)
      input.to_i <= data.length && input.to_i > 0
    end

    def show_sneakers(chosen_month)
      month = @months[chosen_month - 1]
      puts "Here are the releases for #{month}"
    end

end
