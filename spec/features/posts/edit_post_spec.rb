require 'rails_helper'
RSpec.describe "Signing in", js: true do
  feature 'user edits post' do
    scenario 'post exists' do
      visit '/posts'
      within all('table tr').last do
        click_on 'Edit'
      end
      fill_in 'post_name', with: 'super_post!!!'
      click_on 'Update Post'
      expect(page).to have_content 'Post was successfully updated.'
      expect(page).to have_content 'super_post!!!'
    end
  end
end
