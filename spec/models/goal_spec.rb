require 'rails_helper'

RSpec.describe Goal, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_numericality_of(:points) }
  end

  describe 'relationships' do
    it { should belong_to(:life_part) }
    it { should have_many(:actions) }
    # it { should have_many(:tasks).through(:actions) }
  end
end
