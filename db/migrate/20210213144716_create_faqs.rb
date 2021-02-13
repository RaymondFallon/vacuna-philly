class CreateFaqs < ActiveRecord::Migration[5.2]
  def change
    create_table :faqs, force: true, primary_key_trigger: true do |t|
      t.string :youtube_id_esp
      t.string :youtube_id_en
      t.string :html_id_esp
      t.string :html_id_en
      t.string :question_esp
      t.string :question_en
      t.string :answer_esp
      t.string :answer_en
      t.integer :sort_order

      t.timestamps
    end
  end
end
