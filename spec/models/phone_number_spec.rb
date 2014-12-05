require 'rails_helper'

RSpec.describe PhoneNumber, :type => :model do
  it 'is valid' do
    expect(phone_number).to be_valid
  end
 let(:phone_number) { PhoneNumber.new(number: "1112223333", person_id: 1) }
 it 'is associated with a person' do
  expect(phone_number).to respond_to(:person)
 end
end
