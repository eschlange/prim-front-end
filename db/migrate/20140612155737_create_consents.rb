class CreateConsents < ActiveRecord::Migration
  def change
    create_table :consents do |t|
      t.text :header
      t.text :body
      t.text :footer

      t.timestamps
    end
  end
end
