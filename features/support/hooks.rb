After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_').downcase!
    screenshots = "reports/screenshots/#{scenario_name}.png"
    page.save_screenshot(screenshots)
    embed(screenshots, 'image/png', 'Clique aqui para ver a evidência.')
end
