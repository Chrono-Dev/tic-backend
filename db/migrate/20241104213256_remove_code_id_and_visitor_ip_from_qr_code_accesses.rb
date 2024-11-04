class RemoveCodeIdAndVisitorIpFromQrCodeAccesses < ActiveRecord::Migration[7.2]
  def change
    remove_column :qr_code_accesses, :code_id, :string
    remove_column :qr_code_accesses, :visitor_ip, :string
  end
end
