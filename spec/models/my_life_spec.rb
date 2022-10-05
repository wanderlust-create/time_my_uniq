require 'rails_helper'

RSpec.describe MyLife, type: :model do
    describe 'validations' do
    it { should validate_presence_of(:description) }
    end

    describe 'relationships' do
      it { should belong_to(:user) }
      it { should have_many(:life_parts) }
      # it { should have_many(:goals).through(:life_parts) }
      # it { should have_many(:actions).through(:goals) }
      # it { should have_many(:tasks).through(:actions) }
    end
end

