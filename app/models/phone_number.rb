class PhoneNumber < ActiveRecord::Base

let(:phone_number) { PhoneNumber.new(number: "1112223333") }
it 'must have a reference to a person' do
  phone_number.person_id = nil
  expect(phone_number).not_to be_valid
end
  belongs_to :person

end
