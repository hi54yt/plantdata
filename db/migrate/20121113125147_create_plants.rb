class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string       :zw
      t.string       :dlw
      t.string       :rqzw
      t.string       :ke
      t.string       :shu
      t.string       :zwzym
      t.string       :stsyx
      t.string       :gsyxdj
      t.string       :cdxzzb
      t.string       :stfwzhql
      t.string       :jwzsql
      t.string       :gtsyql
      t.string       :zcql
      t.string       :kxso
      t.string       :xkcl
      t.string       :kxfhw
      t.string       :kxo
      t.string       :kxzjs
      t.string       :kxyj
      t.string       :gjql
      t.string       :cl
      t.string       :xzd
      t.string       :gsbw
      t.string       :gssx
      t.string       :gsq
      t.string       :zzgd
      t.string       :jdsz
      t.string       :zrfbqk
      t.string       :dx
      t.string       :vocpflgwz
      t.timestamps
    end
  end
end
