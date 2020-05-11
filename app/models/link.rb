class Link < ApplicationRecord
  def picture_from_url(url)
    self.picture = URI.parse(url)
  end
end
