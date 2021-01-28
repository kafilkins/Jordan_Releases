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

  def self.release_month(month)
  self.all.select do |sneaker|
     sneaker.month == month
    end
  end

  def self.sneaker_title(month)
    self.release_month(month).each.with_index(1) do |sneaker, index|
      puts "#{index}. #{sneaker.title}"
    end
  end

  def self.sneaker_release_date(month)
    self.all.select do |day|
      day.release_date == month
    end
  end

  def self.sneaker_name(month)
    self.sneaker_release_date(month).each.with_index(1) do |day, index|
      puts "#{index}. #{day.name}"
    end
  end

 end
