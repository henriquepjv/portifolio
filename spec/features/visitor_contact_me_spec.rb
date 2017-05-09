require 'rails_helper'

feature 'visit contact page' do
  scenario 'Successfully' do
    visit root_path

    click_on 'Contato'
    expect(page).to have_content 'Seu email:'
    expect(page).to have_content 'Assunto'
    expect(page).to have_content 'Mensagem'
  end

  scenario 'and send contact message' do
    expect(FormMailer).to receive(:contact_msg).once.and_call_original

    contact = create(:contact)

    visit new_contact_path

    fill_in 'Seu email:', with: contact.email
    fill_in 'Assunto', with: contact.subject
    fill_in 'Mensagem', with: contact.body

    click_on 'Enviar'

  end

  scenario 'and should fill all fields' do

    visit new_contact_path

    click_on 'Enviar'

    expect(current_path).to eq contacts_path
    expect(page).to have_content 'Preencha todos os campos'

  end
end
