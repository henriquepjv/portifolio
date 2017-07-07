require 'rails_helper'
require 'cancan/matchers'

describe 'User' do
  describe 'abilities' do
    subject(:ability) { Ability.new(user) }

    context 'when is an admin' do
      let(:user) { create(:user, :admin) }

      it { should be_able_to(:manage, :all) }

      it { should be_able_to(:access, :rails_admin) }

      it { should be_able_to(:edit, Post.new) }
      it { should be_able_to(:destroy, Post.new) }
    end

    context 'when is an user' do
      let(:user) { create(:user, :normal_user) }

      it { should_not be_able_to(:access, :rails_admin) }

      it { should_not be_able_to(:manage, Post.new) }
      it { should_not be_able_to(:manage, User.new) }
    end
  end
end
