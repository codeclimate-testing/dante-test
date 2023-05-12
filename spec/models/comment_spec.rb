require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:comment) { create(:comment) }
  
  describe "#scream" do
    it "screams the comment" do
      expect(comment.scream).to eq(comment.body.upcase)
    end
  end
end
