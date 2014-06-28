require 'rails_helper'

describe Athlete, type: :model do
  describe "validations" do
    it "validates presence of name" do
      athlete = Athlete.new
      expect( athlete ).not_to be_valid
      expect( athlete.errors[:name]).to include "can't be blank"
    end

    it "validates presence of espn_id" do
      athlete = Athlete.new
      expect( athlete ).not_to be_valid
      expect( athlete.errors[:espn_id]).to include "can't be blank"
    end

    it "asserts uniqueness of name" do
      Athlete.create!(name: 'Tiger Woods', espn_id: 'my_id')
      athlete = Athlete.new(name: 'Tiger Woods', espn_id: 'new_id')

      expect( athlete ).not_to be_valid
      expect( athlete.errors[:name]).to include "has already been taken"
    end

    it "asserts uniqueness of espn_id" do
      Athlete.create!(name: 'Tiger Woods', espn_id: 'my_id')
      athlete = Athlete.new(name: 'Ben Hogan', espn_id: 'my_id')

      expect( athlete ).not_to be_valid
      expect( athlete.errors[:espn_id]).to include "has already been taken"
    end
  end
end
