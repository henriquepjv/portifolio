class FormMailer < ApplicationMailer
  default from: "portifolio@hotmail.com"

  def contact_msg(email, subject, body)
    @email = email
    @subject = subject
    @body = body

    mail to: "henriquepjv@gmail.com", subject: "Contato de visitante - Portifólio"
  end
end
