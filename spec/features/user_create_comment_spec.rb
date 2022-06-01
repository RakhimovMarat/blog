require 'rails_helper'

feature 'Comment creation' do
  before(:each) do
    sign_up
    create_article
  end

  scenario 'allows user to create new comment' do
    create_comment

    expect(page).to have_content I18n.t('comments.said')
  end
end