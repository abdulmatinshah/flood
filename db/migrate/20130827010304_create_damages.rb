class CreateDamages < ActiveRecord::Migration
  def change
    create_table :damages do |t|
      t.string :name
      t.string :father_name
      t.string :CNIC
      t.string :family
      t.string :village
      t.string :tehsil

      t.timestamps
    end
  end
end
