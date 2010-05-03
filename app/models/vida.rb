class Vida < ActionMailer::Base
  def notification(email)
    recipients email
    from "muito@vidaloucavida.com.br"
    subject "Esta eh uma notificação"
  end
end
