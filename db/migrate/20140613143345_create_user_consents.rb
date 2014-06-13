class CreateUserConsents < ActiveRecord::Migration
  def change
    create_table :user_consents do |t|
      t.references :site, index: true
      t.string :irb_acceptance_image_url
      t.text :consent_header
      t.text :consent_body
      t.text :consent_footer

      t.timestamps
    end
  end
end
