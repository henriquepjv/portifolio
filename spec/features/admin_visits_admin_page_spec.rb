require "rails_helper"

feature "Admin visits admin login page" do

  scenario "Successfully" do
    visit "/admin"
  end

  scenario "should be logged as admin" do
    user = create(:user, role: 'user')

    login_as(user, scope: :user)

    visit "/admin"
    expect(current_path).to eq root_path
    expect(page).to have_content 'Ops você nào tem permissão para isso'
  end
end
