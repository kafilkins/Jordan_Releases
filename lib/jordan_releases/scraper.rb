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

  def self.scrape_sneaker_title_february(month)
  site= "https://solecollector.com/sneaker-release-dates/air-jordan-release-dates/2021/02/"
  doc = Nokogiri::HTML(open(site))

  sneaker_name = doc.css("div.sneaker-release__title")
  #release_month = doc.css("div.clg-releases__date__month")
  #release_day = doc.css("div.clg-releases__date__day")

  title = sneaker_name.each {|s| puts s.text}
  #month = release_month.each {|t| puts t.text}
  #day = release_day.each {|d| puts d.text}
  JordanReleases::Sneaker.new(title)
end
end

#release_month.text + (" ") + release_day.text
