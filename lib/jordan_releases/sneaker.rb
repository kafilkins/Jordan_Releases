class JordanReleases::Sneaker

  attr_accessor :title
  attr_reader :release_date, :month
  @@all = []

  def initialize(title, release_date, month)
    @title = title
    @release_date = release_date
    @month = month
    @@all << self
  end

  def self.all
      @@all
  end

#  def self.release_month(month) #new code
#    @@all.select {|sneakers| sneaker.month == month}
#  end

#  def self.release_date(title) #new code
#    @all.select {|sneakers| sneaker.release_date == title}
#  end

  def self.release_month(month)
  self.all.select do |sneaker|
     sneaker.month == month
    end
  end

    def self.release_month_jan
      new_array = []
      self.all.each do |sneakers|
        if sneakers.month == "Jan"
        new_array << sneakers
      end
    end
    new_array
  end

  def self.sneaker_name_jan
    self.release_month_jan.each.with_index(1) do |name, index|
      puts "#{index}. #{name.title}"
    end
  end

    def self.title_release_day_jan
      self.release_month_jan.each.with_index(1) do |day, index|
        puts "#{index}. #{day.release_date}"
      end
    end

    def self.release_month_feb
      new_array = []
      self.all.each do |sneakers|
        if sneakers.month == "Feb"
        new_array << sneakers
      end
    end
    new_array
  end

  def self.sneaker_name_feb
    self.release_month_feb.each.with_index(1) do |name, index|
      puts "#{index}. #{name.title}"
    end
  end

    def self.title_release_day_feb
      self.release_month_feb.each.with_index(1) do |day, index|
        puts "#{index}. #{day.release_date}"
      end
    end

    def self.release_month_mar
      new_array = []
      self.all.each do |sneakers|
        if sneakers.month == "Mar"
        new_array << sneakers
      end
    end
    new_array
  end

  def self.sneaker_name_mar
    self.release_month_mar.each.with_index(1) do |name, index|
      puts "#{index}. #{name.title}"
    end
  end

    def self.title_release_day_mar
      self.release_month_mar.each.with_index(1) do |day, index|
        puts "#{index}. #{day.release_date}"
      end
    end

    def self.release_month_apr
      new_array = []
      self.all.each do |sneakers|
        if sneakers.month == "Apr"
        new_array << sneakers
      end
    end
    new_array
  end

  def self.sneaker_name_apr
    self.release_month_apr.each.with_index(1) do |name, index|
      puts "#{index}. #{name.title}"
    end
  end

    def self.title_release_day_apr
      self.release_month_apr.each.with_index(1) do |day, index|
        puts "#{index}. #{day.release_date}"
      end
    end

    def self.release_month_may
      new_array = []
      self.all.each do |sneakers|
        if sneakers.month == "May"
        new_array << sneakers
      end
    end
    new_array
  end

  def self.sneaker_name_may
    self.release_month_may.each.with_index(1) do |name, index|
      puts "#{index}. #{name.title}"
    end
  end

    def self.title_release_day_may
      self.release_month_may.each.with_index(1) do |day, index|
        puts "#{index}. #{day.release_date}"
      end
    end

    def self.release_month_jun
      new_array = []
      self.all.each do |sneakers|
        if sneakers.month == "Jun"
        new_array << sneakers
      end
    end
    new_array
  end

  def self.sneaker_name_jun
    self.release_month_jun.each.with_index(1) do |name, index|
      puts "#{index}. #{name.title}"
    end
  end

    def self.title_release_day_jun
      self.release_month_jun.each.with_index(1) do |day, index|
        puts "#{index}. #{day.release_date}"
      end
    end

end
