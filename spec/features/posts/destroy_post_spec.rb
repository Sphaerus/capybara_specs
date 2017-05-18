require 'rails_helper'
RSpec.describe "Signing in", js: true do
  feature 'user delete post' do
    scenario 'post exists' do
      visit '/posts'
      within all('table tr').last do
        accept_confirm do
          click_on 'Destroy'
        end
      end
      expect(page).to have_content 'Post was successfully destroyed.'
    end
  end
end
