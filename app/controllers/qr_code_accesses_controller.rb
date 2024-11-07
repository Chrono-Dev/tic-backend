class QrCodeAccessesController < ApplicationController
  # Endpoint para registrar um novo acesso ao QRCode
  def create
    qr_code_access = QrCodeAccess.create( # Corrigido para QrCodeAccess
      user_ip: params[:user_ip],
      location: params[:location],
      proAI: params[:proAI],
      comentario: ""
    )

    if qr_code_access.persisted?
      render json: { message: "Acesso registrado com sucesso!" }, status: :created
    else
      render json: { error: "Falha ao registrar o acesso." }, status: :unprocessable_entity
    end
  end
#teste

  def add_comment
    qr_code_access = QrCodeAccess.find_by(id: params[:id])
    if qr_code_access
      qr_code_access.update(comentario: params[:comentario])
      render json: { message: "Comentário atualizado com sucesso!" }
    else
      render json: { error: "Registro não encontrado." }, status: :not_found
    end
  end

  def index
    qr_code_accesses = QrCodeAccess.all # Corrigido para QrCodeAccess
    render json: qr_code_accesses
  end
end