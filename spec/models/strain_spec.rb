require 'rails_helper'

RSpec.describe Strain, type: :model do
  it " is not valid without uniqueness name" do
    strain = Strain.create(name: "Algún Nombre")
    dup_strain = strain.dup
    expect(dup_strain).to_not be_valid
  end

  it "is not valid without a name" do
    strain = Strain.create(name: nil)
    expect(strain).to_not be_valid
  end
end
