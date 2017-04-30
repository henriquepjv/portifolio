require 'rails_helper'

feature 'Visitor visits index' do
  scenario 'Successfully'do

    visit root_path

    expect(page).to have_content 'Bem vindo'
  end
end
