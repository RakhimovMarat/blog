require "rails_helper"

feature "User log in" do 
  before(:each) do
    sign_up
  end

  scenario "allows user log in" do
    log_in
    expect(page).to have_content I18n.t('devise.sessions.signed_in')
  end
end




