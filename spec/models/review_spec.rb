require 'spec_helper'

describe Review do
  let!(:review) {FactoryGirl.build(:review)}

  it { should have_valid(:rating).when(2, 3, 5)}
  it { should_not have_valid(:rating).when(nil, "three", "")}
  it { should have_valid(:body).when(review.body, nil, "")}
  it { should belong_to(:movie)}
end
