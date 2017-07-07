require'rails_helper'

describe PostsController, type: :controller do
  it 'create a post with valid params' do
    Post.create(title: 'banana', description: 'fruit', body: 'bananas post')

    expect(response.status).to eq(200)
  end
end
