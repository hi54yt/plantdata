class Plant < ActiveRecord::Base
  attr_accessible :zw, :dlw, :rqzw, :ke, :shu, :zwzym, :stsyx, :gsyxdj, :cdxzzb, :stfwzhql, :jwzsql, :gtsyql, :zcql, :kxso, :xkcl, :kxfhw, :kxo, :kxzjs, :kxyj, :gjql, :cl, :xzd, :gsbw, :gssx, :gsq, :zzgd, :jdsz, :zrfbqk, :dx, :vocpflgwz
  def self.search(search)
    if search
      where("zw LIKE ?", :"%#{search}%")
    else
      all
    end
  end
end
