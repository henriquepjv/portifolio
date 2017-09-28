require 'rails_helper'

feature 'Blog Post' do
  context 'Visitor visits blog page' do
    let!(:post1) { create(:post) }
    let!(:post2) { create(:post,
                          title: 'post 2',
                          description: 'second description') }
    let!(:post3) { create(:post,
                          title: 'post 3',
                          description: 'third text',
                          published: false) }

    scenario 'Successfully see only published posts' do
      visit root_path

      click_on 'Blog'

      expect(page).to have_content post1.title
      expect(page).to have_content post1.description
      expect(page).to have_content post2.title
      expect(page).to have_content post2.description
      expect(page).not_to have_content post3.title
      expect(page).not_to have_content post3.description
    end

    scenario 'visit specific blog post' do
      visit posts_path

      click_on post1.title

      expect(page).to have_content post1.title
      expect(page).to have_content post1.body
      expect(page).to have_content 'Outros Posts:'
      expect(page).not_to have_content post3.title
    end

    scenario 'click on other posts' do
      visit post_path(post1)

      click_on post2.title

      expect(page).to have_content post2.title
      expect(page).to have_content post2.body
      expect(page).to have_content 'Outros Posts:'
    end
  end
end
