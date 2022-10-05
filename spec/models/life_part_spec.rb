require 'rails_helper'

RSpec.describe LifePart, type: :model do
      describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_numericality_of(:points) }
    end

    describe 'relationships' do
      it { should belong_to(:my_life) }
      # it { should have_many(:life_parts) }
      # it { should have_many(:goals).through(:life_parts) }
      # it { should have_many(:actions).through(:goals) }
      # it { should have_many(:tasks).through(:actions) }
    end
end
