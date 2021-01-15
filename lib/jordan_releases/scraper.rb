class JordanReleases::Scraper
  def self.scrap_info
    doc = Nokogiri::HTML(open("https://sneakernews.com/air-jordan-release-dates/"))
    results = doc.css("div.content-box")

      name = n.css("h2 a").text.strip
      name.each do |n|
        JordanReleases::Sneaker_date.new(name)
        binding.pry
      end

      release_date = n.css("span.release-date").text.strip
      release_date do |d|
        JordanReleases::release_date.new(release_date)
      #@price = n.css("span.release-price").text.strip

    end
  end
end
