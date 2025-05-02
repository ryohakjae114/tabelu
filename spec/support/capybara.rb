# 全システムテストを rack_testする
RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by(:rack_test)
  end
end

# seleniumでテストするときはアンコメントする
# Capybara.javascript_driver = :selenium_chrome_headless
