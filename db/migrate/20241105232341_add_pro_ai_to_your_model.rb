class AddProAiToYourModel < ActiveRecord::Migration[7.2]
  def change
    add_column :qr_code_accesses, :proAI, :boolean
  end
end
