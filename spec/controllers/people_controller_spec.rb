require "rails_helper"

describe PeopleController do
  describe "#create" do
    context "when person is valid" do
      it "redirects to #show" do
        person = stub_valid_person

        post :create, person: { first_name: "John" }

        expect(response).to redirect_to(person)
      end
    end

    context "when person is invalid" do
      it "renders new" do
        person = stub_invalid_person

        post :create, person: { first_name: "John" }

        expect(response).to render_template(:new)
      end
    end

    def stub_valid_person
      Person.new.tap do |person|
        allow(Person).to receive(:new).and_return person
        allow(person).to receive(:save).and_return(true)
      end
    end

    def stub_invalid_person
      Person.new.tap do |person|
        allow(Person).to receive(:new).and_return person
        allow(person).to receive(:save).and_return(false)
      end
    end
  end
end
