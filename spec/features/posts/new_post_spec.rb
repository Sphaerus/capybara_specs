require 'rails_helper'
RSpec.describe "Signing in", js: true do
  feature 'user creates posts' do

    scenario 'some scenario' do
      visit '/posts/new'
      fill_in 'Name', with: 'super_post'
      click_on 'Create Post'
      expect(page).to have_content 'super_post'
    end
  end
end
