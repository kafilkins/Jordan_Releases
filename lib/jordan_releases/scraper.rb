class JordanReleases::Scraper
  def scrap_months
    doc = Nokogiri::HTML(open("https://houseofheat.co/jordan-release-dates/"))
    binding.pry
  end
end
