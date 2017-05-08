require 'rails_helper'

describe FormMailer, type: :mailer do
  describe 'contact_msg' do
    let(:contact) { create(:contact, email: 'teste@mail.com', subject: 'Olá assunto 1', body: 'conteudo body')  }
    let(:mail) { FormMailer.contact_msg(contact.email, contact.subject, contact.body) }

    it 'should be delivered to me' do
      expect(mail.to).to include 'henriquepjv@gmail.com'
    end

    it 'should have sent by visitor' do
      expect(mail.from).to include "portifolio@hotmail.com"
    end

    it 'subject should be' do
      expect(mail.subject).to eq "Contato de visitante - Portifólio"
    end

    it 'body should have' do
      expect(mail.body).to include contact.email
      expect(mail.body).to include contact.subject
      expect(mail.body).to include contact.body
    end
  end
end
