class Link < ActiveRecord::Base
  before_create :set_short_url
  before_save :url_check


  has_many :clicks
  validates :url, presence: true
  belongs_to :user, counter_cache: true

  scope :recent, -> {
      order("links.created_at DESC").where(deleted: false) }

  scope :popular, -> {
      order("links.clicks_count desc").where(deleted: false) }


  private

  def url_check
    self.url = (self.url[0..3] == "http") ?
                            self.url : "http://" + self.url
  end

  def set_short_url
    return self.short_url if self.short_url.present?
    try_short_url = SecureRandom.urlsafe_base64(4)
    while Link.where(:short_url => try_short_url).any?
      try_short_url = SecureRandom.urlsafe_base64(4)
    end
    self.short_url = try_short_url
  end
end
