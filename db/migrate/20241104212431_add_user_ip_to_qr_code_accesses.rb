class AddUserIpToQrCodeAccesses < ActiveRecord::Migration[7.2]
  def change
    add_column :qr_code_accesses, :user_ip, :string
  end
end
