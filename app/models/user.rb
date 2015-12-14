class User < ActiveRecord::Base
  has_many :links
  def self.sign_in_from_omniauth(auth)
    find_by(provider: auth["provider"], uid: auth["uid"]) ||
      create_user_from_omniauth(auth)
  end

  def self.create_user_from_omniauth(auth)
    return auth unless auth
    create(provider: auth["provider"],
           uid: auth["uid"],
           name: auth["info"]["name"],
           image_url: auth["info"]["image"])
  end

  scope :top, -> { order("users.links_count DESC").where.not(id: 0) }
end
