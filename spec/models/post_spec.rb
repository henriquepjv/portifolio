require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { create(:post) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:body) }
end
