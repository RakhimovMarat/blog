require 'rails_helper'

describe Comment do
  it { should belong_to :article }

  it { should validate_length_of(:body).is_at_most(4000) }
end
