class JordanReleases::Scraper
  def self.scrap_months
    doc = Nokogiri::HTML(open("https://sneakernews.com/air-jordan-release-dates/"))
    results = doc.css("div.content-box")

    results.each do |n|
      release_date = n.css("span.release-date").text.strip
      sneaker_name = n.css("h2 a").text.strip
      price = n.css("span.release-price").text.strip
      end

  end
end


#doc.css("span.release-date")
#doc.css("h2 a")
#doc.css("span.release-price")
