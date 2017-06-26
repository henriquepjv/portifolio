require 'rails_helper'

feature 'Visitor visits index' do
  scenario 'Successfully'do

    visit root_path

    expect(page).to have_content 'Blog'
    expect(page).to have_content 'Sobre'
    expect(page).to have_content 'Contato'
  end
end
