class AddAttributesToBreeds < ActiveRecord::Migration[7.0]
  def change
    add_column  :breeds, :life_span, :string
    add_column  :breeds, :breed_for, :string
    add_column  :breeds, :image_url, :string
  end
end
