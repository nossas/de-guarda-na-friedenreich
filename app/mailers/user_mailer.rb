# coding: utf-8
class UserMailer < ActionMailer::Base
  default from: "deguarda@meurio.org.br"

  def notify_from(user)
    @user = user
    mail(
      to: 'nucleo@meurio.org.br',
      subject: '[Friedenreich] Alerta aos Guardiões!',
      from: 'deguarda@meurio.org.br'
    )
  end
end
