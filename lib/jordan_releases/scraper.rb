class JordanReleases::Scraper

  def self.scrape_sneaker_title_january(month)
    site= "https://solecollector.com/sneaker-release-dates/air-jordan-release-dates/2021/01/"
    doc = Nokogiri::HTML(open(site))

    sneaker_name = doc.css("div.sneaker-release__title")
  #  price = doc.css("span.sneaker-release__option")
  #  release_month = doc.css("div.clg-releases__date__month")
  #  release_day = doc.css("div.clg-releases__date__day")

    title = sneaker_name.each.with_index(1) {|s, index| puts "#{index}. #{s.text}"}
  #  price = price.each {|p| puts p.text.strip}
  #  month = release_month.each {|t| puts t.text}
  #  day = release_day.each {|d| puts d.text}
  #  release_date = month | day
    JordanReleases::Sneaker.new(title)
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
