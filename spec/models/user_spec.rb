require 'rails_helper'

describe User do
  it { should have_many :albums }
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
  it { should validate_presence_of :password_confirmation }
  it { should validate_confirmation_of :password }

  it "creates a new user" do
    new_user = User.create(email: 'dmmoody@gmail.com', password: 'badpassword1234')
    expect(new_user.email).to eq('dmmoody@gmail.com')
  end

end
