require 'rails_helper'
RSpec.describe "listing posts", js: true do
  feature 'user lists posts' do
    scenario 'posts exists' do
      visit '/posts'
      expect(page).to have_content 'Posts'
    end
  end
end
