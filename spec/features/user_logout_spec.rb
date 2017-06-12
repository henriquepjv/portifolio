require "rails_helper"

feature "User logout" do
  scenario "Successfully" do
    user = create(:user, role: 'user')
    login_as(user, scope: :user)

    visit root_path

    click_on 'Sair'

    expect(page).to have_content 'Logout efetuado com sucesso.'
  end
end
