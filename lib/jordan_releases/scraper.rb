class JordanReleases::Scraper

  def self.scrap_months
    url = "https://solecollector.com/sneaker-release-dates/air-jordan-release-dates/"
    doc = Nokogiri::HTML(open(url))
    month = doc.css("div.clg-releases__date__month")
    month.each do |m|
      name = m.text.strip
      sneaker = doc.css("div.sneaker-release__title")
      JordanReleases::Month.new(name)
    end
  end

  def self.scrap_sneaker_name(month)
    url = "https://solecollector.com/sneaker-release-dates/air-jordan-release-dates/"
    doc = Nokogiri::HTML(open(url))
    sneakers = doc.css("div.sneaker-release__title")

    sneakers.each do |s|
      title = sneakers.text.strip
      month = doc.css("div.clg-releases__date__month")
      release_date = doc.css("div.clg-releases__date__day")
    #{ |n| sneaker = n.text.strip }
        JordanReleases::Sneaker.new(title, month, release_date )
      end
      end

  def self.scrape_release_date(sneaker)
    url = "https://solecollector.com/sneaker-release-dates/air-jordan-release-dates/"
    doc = Nokogiri::HTML(open(url))
    release_date = page.css("div.clg-releases__date__day")
    release_date.each do |d|
        date = d.text
        JordanReleases::Release_date.new(date)
      end
  end
end

#site= "https://solecollector.com/sneaker-release-dates/air-jordan-release-dates/"
#page = Nokogiri::HTML(open(site))
#month = page.css("div.clg-releases__date__month")
#day = page.css("div.clg-releases__date__day")
#name = page.css("div.sneaker-release__title")
