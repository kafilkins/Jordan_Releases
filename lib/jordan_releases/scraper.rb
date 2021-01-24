class JordanReleases::Scraper

  def self.scrape_sneaker_title_january
    site= "https://solecollector.com/sneaker-release-dates/air-jordan-release-dates/2021/01/"
    doc = Nokogiri::HTML(open(site))

    doc.css(".release-group__container").each do |row|
    month = row.css(".clg-releases__date__month").text
    day = row.css(".clg-releases__date__day").text
    release_date = "#{month} - #{day}"
    title = row.css(".sneaker-release__title").text

    JordanReleases::Sneaker.new(title, release_date, month)
  end
end

  def self.scrape_sneaker_title_february
    site= "https://solecollector.com/sneaker-release-dates/air-jordan-release-dates/2021/02/"
    doc = Nokogiri::HTML(open(site))

    doc.css(".release-group__container").each do |row|
      month = row.css(".clg-releases__date__month").text
      day = row.css(".clg-releases__date__day").text
      release_date = "#{month} - #{day}"
      title = row.css(".sneaker-release__title").text

      JordanReleases::Sneaker.new(title, release_date, month)
    end
  end

  def self.scrape_sneaker_title_march
    site= "https://solecollector.com/sneaker-release-dates/air-jordan-release-dates/2021/03/"
    doc = Nokogiri::HTML(open(site))

    doc.css(".release-group__container").each do |row|
      month = row.css(".clg-releases__date__month").text
      day = row.css(".clg-releases__date__day").text
      release_date = "#{month} - #{day}"
      title = row.css(".sneaker-release__title").text

      JordanReleases::Sneaker.new(title, release_date, month)
    end
  end

  def self.scrape_sneaker_title_april
    site= "https://solecollector.com/sneaker-release-dates/air-jordan-release-dates/2021/04/"
    doc = Nokogiri::HTML(open(site))

    doc.css(".release-group__container").each do |row|
      month = row.css(".clg-releases__date__month").text
      day = row.css(".clg-releases__date__day").text
      release_date = "#{month} - #{day}"
      title = row.css(".sneaker-release__title").text

      JordanReleases::Sneaker.new(title, release_date, month)
    end
  end

  def self.scrape_sneaker_title_may
    site= "https://solecollector.com/sneaker-release-dates/air-jordan-release-dates/2021/05/"
    doc = Nokogiri::HTML(open(site))

    doc.css(".release-group__container").each do |row|
      month = row.css(".clg-releases__date__month").text
      day = row.css(".clg-releases__date__day").text
      release_date = "#{month} - #{day}"
      title = row.css(".sneaker-release__title").text

      JordanReleases::Sneaker.new(title, release_date, month)
    end
  end

  def self.scrape_sneaker_title_june
    site= "https://solecollector.com/sneaker-release-dates/air-jordan-release-dates/2021/06/"
    doc = Nokogiri::HTML(open(site))

    doc.css(".release-group__container").each do |row|
      month = row.css(".clg-releases__date__month").text
      day = row.css(".clg-releases__date__day").text
      release_date = "#{month} - #{day}"
      title = row.css(".sneaker-release__title").text

      JordanReleases::Sneaker.new(title, release_date, month)
    end
  end

end

#release_month.text + (" ") + release_day.text
