require 'rails_helper'

feature 'Visitor visits blog page' do
  scenario 'Successfully' do

    post1 = create(:post)
    post2 = create(:post, title: 'Post 2', description: 'simple description')

    visit root_path

    click_on 'Blog'

    expect(page).to have_content post1.title
    expect(page).to have_content post1.description
    expect(page).to have_content post2.title
    expect(page).to have_content post2.description
  end

  scenario 'visit specific blog post' do

    post1 = create(:post)

    visit posts_path

    click_on post1.title

    expect(page).to have_content post1.title
    expect(page).to have_content post1.body
    expect(page).to have_content 'Outros Posts:'
  end

  scenario 'click on other posts' do

    create(:post)
    post2 = create(:post, title: 'Post 2', description: 'simple description')

    visit post_path(1)

    click_on post2.title

    expect(page).to have_content post2.title
    expect(page).to have_content post2.body
    expect(page).to have_content 'Outros Posts:'
  end
end
