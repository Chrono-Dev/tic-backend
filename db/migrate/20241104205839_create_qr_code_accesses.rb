class CreateQrCodeAccesses < ActiveRecord::Migration[7.2]
  def change
    create_table :qr_code_accesses do |t|
      t.string :code_id
      t.string :visitor_ip

      t.timestamps
    end
  end
end
