class QrCodeAccessesController < ApplicationController
  # Endpoint para registrar um novo acesso ao QRCode
  def create
    qr_code_access = QrCodeAccess.create( # Corrigido para QrCodeAccess
      user_ip: params[:user_ip],
      location: params[:location],
      proAI: params[:proAI]
    )

    if qr_code_access.persisted?
      render json: { message: "Acesso registrado com sucesso!" }, status: :created
    else
      render json: { error: "Falha ao registrar o acesso." }, status: :unprocessable_entity
    end
  end
#teste
  def index
    qr_code_accesses = QrCodeAccess.all # Corrigido para QrCodeAccess
    render json: qr_code_accesses
  end
end