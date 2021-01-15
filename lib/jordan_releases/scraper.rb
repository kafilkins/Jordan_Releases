class JordanReleases::Scraper

  def self.scrap_sneaker_name(month)
    url = "https://sneakernews.com/air-jordan-release-dates/"
    doc = Nokogiri::HTML(open(url))
    results = doc.css("div.content-box")

      sneaker_name = results.css("h2 a").text.strip
      sneaker_name.each do |n|
          name = n.text
          binding.pry
        JordanReleases::Sneaker.new(name)
      end
      end

  def self.scrape_release_date(sneaker)
    url = "https://sneakernews.com/air-jordan-release-dates/"
    doc = Nokogiri::HTML(open(url))
    results = doc.css("div.content-box")

      release_date = results.css("span.release-date").text.strip
      release_date.each do |d|
        date = d.text
        JordanReleases::Release_date.new(date)
      #@price = n.css("span.release-price").text.strip

    end
  end
end
