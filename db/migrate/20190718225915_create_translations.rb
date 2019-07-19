class CreateTranslations < ActiveRecord::Migration[6.0]
  def change
    create_table :translations do |t|
      t.string :original_text
      t.string :translated_text

      t.timestamps
    end
  end
end
