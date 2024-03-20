from appium import webdriver

desired_caps = {
    'platformName': 'Android',
    'platformVersion': '<version_number>',
    'deviceName': '<device_name>',
    'appPackage': '<app_package_name>',
    'appActivity': '<app_activity_name>'
}

driver = webdriver.Remote('http://localhost:4723/wd/hub', desired_caps)
