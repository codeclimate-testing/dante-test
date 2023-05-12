require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }
  
  describe "#cool?" do
    context "when user has more than 5 followers" do
      before do
        6.times do
          new_user = create(:user)
          user.followers << new_user
          user.save!
        end
      end
      
      it "user is cool" do
        expect(user.cool?).to eq(true)
      end
    end

    context "when user has 5 or less followers" do
      before do
        user.update(followers: [])
      end

      it "user is not cool" do
        expect(user.cool?).to eq(false)
      end
    end
  end

  describe "#something" do
    it "does something" do
      user.something
    end
  end
end
