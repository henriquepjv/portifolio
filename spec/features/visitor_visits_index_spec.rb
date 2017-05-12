require 'rails_helper'

feature 'Visitor visits index' do
  scenario 'Successfully'do

    visit root_path

    expect(page).to have_content 'Bem vindo'
  end

  scenario 'and click on curriculum' do

    visit root_path

    click_on 'Sobre'
    expect(current_path).to eq curriculums_path
    expect(page).to have_content 'Meus dados'
  end
end
