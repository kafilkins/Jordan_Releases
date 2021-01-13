class JordanReleases::CLI
  def call
    puts "Welcome SneakerHead"
    puts "Please enter a month"
    get_available_months
    get_user_month
    #get user input, ask for a month
    #get sneaker releases for that month
    #get user input, select from info provided for specific release date
    end

    def get_available_months
      #this info will be scraped from the website
      @months = ["January 2021", "February 2021", "March 2021", "April 2021", "May 2021", "June 2021",
                "July 2021", "August 2021", "September 2021", "October 2021", "November 2021", "December 2021"]
    end

    def get_user_month
      @months.each_with_index { |month, index| puts "#{index + 1} #{month}"}
    end
end
