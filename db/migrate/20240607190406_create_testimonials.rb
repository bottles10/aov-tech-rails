class CreateTestimonials < ActiveRecord::Migration[7.1]
  def change
    create_table :testimonials do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.string :company
      t.text :content

      t.timestamps
    end
  end
end
