require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'associations' do
    it { should belong_to(:category) }
    it { should have_many(:orders) }
  end

  # Validations
  let(:name) { 'Milk' }
  let(:price) { 10.25 }
  let(:subject) do
    build(:product, name: name, price: price)
  end

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  context 'when name is empty' do
    let(:name) { '' }
    it "is not valid" do
      expect(subject).to_not be_valid
    end
  end

  context 'when price is zero' do
    let(:price) { 0.00 }
    it "is not valid" do
      expect(subject).to_not be_valid
    end
  end
end
