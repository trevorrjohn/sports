require 'rails_helper'

describe "Facotry spec" do
  it "can create all factories" do
    Dir[Rails.root.join("spec/**/*_factory.rb")].each do |factory_file|
      factory = factory_file.match(/\/(?<factory>\w+)s_factory.rb/)[:factory]

      expect( FactoryGirl.create(factory) ).to be_valid,
        -> { "the following factory could not be created: #{factory}" }
    end
  end
end
