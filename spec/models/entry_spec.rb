require 'spec_helper'

describe Entry do
  it {should have_valid(:title).when('Bloogy', '2')}
  it {should_not have_valid(:title).when(nil, '')}

  it {should have_valid(:description).when('Bloogy', '2')}
  it {should_not have_valid(:description).when(nil, '')}

  it {should belong_to(:category)}
end
