class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :name # 患者さんの名前（例：山田 太郎）
      t.integer :mrn # MRN（Medical Record Number）＝診察券番号など、患者の一意なID
      t.integer :age # 年齢（※実際のアプリでは生年月日から計算する方が正確）
      t.string :sex # 性別（例："男性"、"女性"など）
      t.string :insurance # 保険情報（例：国保、社保、後期高齢など）
      t.boolean :smoker # 喫煙者かどうか（true: 喫煙者、false: 非喫煙者）
      t.boolean :surgery # 手術歴があるかどうか（true: あり、false: なし）
    end
  end
end
