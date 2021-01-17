class JordanReleases::Scraper

  #def self.scrap_months
    #url = "https://solecollector.com/sneaker-release-dates/air-jordan-release-dates/"
    #doc = Nokogiri::HTML(open(url))
    #month = doc.css("div.clg-releases__date__month")
    #month.each do |m|
      #name = m.text.strip
      #sneaker = doc.css("div.sneaker-release__title")
      #JordanReleases::Month.new(name)
    #end
  #end

  def self.scrap_sneaker_name
    url = "https://solecollector.com/sneaker-release-dates/air-jordan-release-dates/2021/01/"
    doc = Nokogiri::HTML(open(url))
    sneakers = doc.css("div.sneaker-release__title")
    #month = doc.css("div.clg-releases__date__month")
    #day = doc.css("div.clg-releases__date__day")
    sneakers.each do |s|
      title = s.text.strip
    #{ |n| sneaker = n.text.strip }
      JordanReleases::Sneaker.new(title)
      end
      end

  def self.scrape_release_day(sneaker)
    url = "https://solecollector.com/sneaker-release-dates/air-jordan-release-dates/"
    doc = Nokogiri::HTML(open(url))
    release_day = page.css("div.clg-releases__date__day")
    release_day.each do |d|
        date = d.text
        JordanReleases::Release_day.new(day)
      end
  end
end

#site= "https://solecollector.com/sneaker-release-dates/air-jordan-release-dates/2021/01/"

#doc = Nokogiri::HTML(open(site))

#release_month = doc.css("div.clg-releases__date__month")
#release_day = doc.css("div.clg-releases__date__day")

#puts release_month.first.text + (" ") + release_day.first.text
