require 'rails_helper'

describe Article do
  let(:user) {User.create(name: "Ang", email: "ang@email.com", password: "password")}
  
  let(:article) {
    Article.create(
      author_id: user.id, 
      title: "Avatar", 
      text: "Water. Earth. Fire. Air. Long ago, the four nations lived together in harmony. Then, everything changed when the Fire Nation attacked."
    )}

  it 'has an author' do
    expect(article.author).to be_an_instance_of User
  end

  it 'has a title' do
    expect(article.title).to eq "Avatar"
  end

  it 'has a body of text' do
    expect(article.text).to eq "Water. Earth. Fire. Air. Long ago, the four nations lived together in harmony. Then, everything changed when the Fire Nation attacked."
  end

end
