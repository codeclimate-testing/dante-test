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

  describe "#old?" do
    context "when the user was created more than a year ago" do
      let(:user) { create(:user, created_at: 2.years.ago) }

      it "is old" do
        expect(user.old?).to eq(true)
      end
    end

    context "when the user was created less than a year ago" do
      let(:user) { create(:user, created_at: 2.days.ago) }

      it "is not old" do
        expect(user.old?).to eq(false)
      end
    end
  end

  describe "#new?" do
    context "when the user was created more than a year ago" do
      let(:user) { create(:user, created_at: 2.years.ago) }

      it "is not new" do
        expect(user.new?).to eq(false)
      end
    end

    context "when the user was created less than a year ago" do
      let(:user) { create(:user, created_at: 2.days.ago) }

      it "is new" do
        expect(user.new?).to eq(true)
      end
    end
  end
end
