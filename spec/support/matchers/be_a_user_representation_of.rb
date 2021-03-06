RSpec::Matchers.define :be_a_user_representation_of do |user|
  match do |json|
    response_attributes = user.attributes.slice *%w(
      id
      username
    )

    expect(json).to be
    expect(JSON.parse(json)).to include(response_attributes)
  end
end
