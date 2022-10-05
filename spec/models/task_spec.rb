require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_numericality_of(:points) }
  end

  describe 'relationships' do
    it { should belong_to(:action) }
  end
end
