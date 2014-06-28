require 'rails_helper'

describe "Facotry spec" do
  shared_examples_for 'valid factories' do
    it 'is valid' do
      expect( FactoryGirl.create(factory) ).to be_valid,
        -> { "the following factory could not be created: #{factory}" }
    end
  end


  FactoryGirl.factories.collect(&:name).each do |factory_name|
    let(:factory) { factory_name }

    it_behaves_like "valid factories"
  end
end
