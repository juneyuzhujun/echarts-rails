# encoding: utf-8
require 'spec_helper'

feature "Visiting homepage" do
  scenario "homepage haven't error status" do
    visit root_path
    expect(page.status_code).to eq(200)
  end

  scenario "we should see echarts when visiting homepage", :js => true do
    visit root_path

    expect(has_selector?(:xpath,'//body/div[@id="main"]/div/canvas')).to be true
  end

  scenario "Echarts version is 3.2.3", :js => true do
    visit root_path
    expect(page.driver.console_messages.first[:message]).to eq('3.2.3')
  end
end

