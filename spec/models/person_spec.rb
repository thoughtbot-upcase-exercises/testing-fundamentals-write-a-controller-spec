require "rails_helper"

describe Person do
  it "requires a name to be valid" do
    person = Person.new(first_name: nil)

    expect(person).not_to be_valid
  end
end
