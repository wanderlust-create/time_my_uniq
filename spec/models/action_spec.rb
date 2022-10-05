require 'rails_helper'

RSpec.describe Action, type: :model do
    describe 'validations' do
      it { should validate_presence_of(:name) }
      it { should validate_numericality_of(:points) }
    end

    describe 'relationships' do
      it { should belong_to(:goal) }
      # it { should have_many(:tasks) }
    end
end
