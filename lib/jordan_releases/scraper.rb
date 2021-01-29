class JordanReleases::Scraper

    def self.scrape_sneaker_by_month(month)
        site= "https://solecollector.com/sneaker-release-dates/air-jordan-release-dates/2021/#{month}/"
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
