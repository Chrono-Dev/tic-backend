class AddComentarioToQrCodeAccesses < ActiveRecord::Migration[7.2]
  def change
    add_column :qr_code_accesses, :comentario, :string
  end
end
