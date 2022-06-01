require 'rails_helper'

feature 'Article creation' do
  before(:each) do
    sign_up
  end

  scenario 'allows user to visit new article page' do
    visit new_article_path

    expect(page).to have_content I18n.t('articles.new')
  end

#  scenario 'allows user to create new article' do
#    create_article

#    expect(page).to have_content I18n.t('???')
#  end


end
