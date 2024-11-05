class CreateQrCodeAccesses < ActiveRecord::Migration[7.2]
  def change
    create_table :qr_code_accesses do |t|
      t.string :user_ip
      t.string :location

      t.timestamps
    end
  end
end
