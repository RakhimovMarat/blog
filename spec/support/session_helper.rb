def sign_up
  visit new_user_registration_path

  fill_in :user_email, with: 'user@example.com'
  fill_in :user_username, with: 'mike'
  fill_in :user_password, with: '12345678'
  fill_in :user_password_confirmation, with: '12345678'

  click_button 'Sign up'
end

def log_in
  click_button 'Sign out'

  visit new_user_session_path

  fill_in :user_email, with: 'user@example.com'
  fill_in :user_password, with: '12345678'

  click_button 'Log in'
end

def create_article
  visit new_article_path

  fill_in :article_title, with: 'Post7'
  fill_in :article_text, with: 'This is post #7'

  click_button 'Create article'
end

def create_comment
  articles_path

  fill_in :comment_body, with: 'This is a comment'

  click_button 'Create Comment'
end

