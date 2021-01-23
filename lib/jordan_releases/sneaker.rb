class JordanReleases::Sneaker

  attr_accessor :title #:month, :price, :day
  attr_reader :release_date, :month
  @@all = []

  def initialize(title, release_date, month)
    @title = title
    @release_date = release_date
    @month = month
  #  @price = price
  #  @day = day
    @@all << self
  end

  def self.all
      @@all
  end

#  def show_titles
#    @@all.each.with_index(1) do |name, index|
#      puts "#{index}. #{name.title}"
#    end
#  end

    def self.release_month
      new_array = []
      self.all.each do |sneakers|
        if sneakers.month == "Jan"
        new_array << sneakers
      end
    end
    new_array
  end

  def self.sneaker_name
    self.release_month.each.with_index(1) do |name, index|
      puts "#{index}. #{name.title}"
    end
  end

    def self.title_release_day
      self.release_month.map do |day|
        puts "#{day.release_date}"
      end
    end

end
