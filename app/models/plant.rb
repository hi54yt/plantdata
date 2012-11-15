class Plant < ActiveRecord::Base
  # attr_accessible :title, :body
  def self.search(search)
    if search
      where("zw LIKE ?", "%#{search}%")
    else
      all
    end
  end
end
