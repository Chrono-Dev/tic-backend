class QrCodeAccessesController < ApplicationController
  # Endpoint para registrar um novo acesso ao QRCode
  def create
    qr_code_access = QRCodeAccess.create(
      user_ip: params[:user_ip],
      location: params[:location]
    )

    if qr_code_access.persisted?
      render json: { message: "Acesso registrado com sucesso!" }, status: :created
    else
      render json: { error: "Falha ao registrar o acesso." }, status: :unprocessable_entity
    end
  end

  def index
    qr_code_accesses = QRCodeAccess.all
    render json: qr_code_accesses
  end
end