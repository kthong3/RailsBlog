require 'rails_helper'

describe User do
  let(:user1) {User.create(name: "Ang", email: "ang@email.com", password: "password", admin: true)}
  let(:user2) {User.create(name: "Katara", email: "katara@email.com", password: "password")}

  it 'has a name' do
    expect(user1.name).to eq "Ang"
  end

  it 'confirms if user is an admin' do
    expect(user1.admin).to eq true
    expect(user2.admin).to eq false
  end
end
