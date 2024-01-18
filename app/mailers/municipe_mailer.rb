class MunicipeMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @municipe = params[:municipe]
    mail(to: @municipe.email, subject: 'Você foi cadastrado')
  end

  def update_email
    @municipe = params[:municipe]
    mail(to: @municipe.email, subject: 'Dados atualizados')
  end
end
