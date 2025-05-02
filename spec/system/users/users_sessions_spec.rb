require 'rails_helper'

RSpec.describe 'Users::Sessions', type: :system do
  let(:hakjae) { create(:user, name: '呂鶴載', password: '1234512345') }

  context '未ログイン時' do
    it 'ログインできること' do
      visit root_path
      click_link 'ログイン', match: :first
      fill_in 'ID', with: hakjae.id
      fill_in 'パスワード', with: '1234512345'
      click_button 'ログイン'
      expect(page).to have_button '呂鶴載'
      expect(page).to have_content 'ログインしました。'
    end
  end

  context 'ログイン時' do
    before do
      sign_in hakjae, scope: :user
    end

    it 'ログアウトできること' do
      visit root_path
      click_button '呂鶴載'
      click_button 'ログアウト'
      expect(page).to have_content 'ログアウトしました。'
    end
  end
end
