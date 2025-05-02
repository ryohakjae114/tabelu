require 'rails_helper'

RSpec.describe 'Users::Registrations', type: :system do
  it 'アカウント登録ができること' do
    visit root_path
    click_on 'ログイン'
    click_on 'アカウント登録'
    fill_in '名前', with: '呂鶴載'
    fill_in 'パスワード', with: '1234512345', match: :first
    fill_in 'パスワード（確認用）', with: '1234512345'
    click_on '登録する'
    expect(page).to have_button '呂鶴載'
    expect(page).to have_content "アカウント登録が完了しました。あなたのIDは #{User.last.id} です。ログイン時に使用するので大切に保管してください。"
  end
end
