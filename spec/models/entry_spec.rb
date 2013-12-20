require 'spec_helper'

describe Entry do
  it {should have_valid(:title).when('Bloogy', '2')}
  it {should_not have_valid(:title).when(nil, '')}

  it {should validate_presence_of :description}
end
