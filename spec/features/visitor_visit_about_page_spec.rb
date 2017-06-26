require 'rails_helper'

feature 'Visitor visits about page' do
  scenario 'Successfully'do

    visit root_path

    click_on 'Sobre'

    expect(page).to have_content 'Sobre mim:'
  end
end
