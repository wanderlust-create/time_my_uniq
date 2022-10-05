require 'rails_helper'

RSpec.describe Meditation, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:link) }
  end
end
