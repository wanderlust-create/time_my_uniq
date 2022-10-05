require 'rails_helper'

RSpec.describe PositiveAffirmation, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:description) }
  end
end
