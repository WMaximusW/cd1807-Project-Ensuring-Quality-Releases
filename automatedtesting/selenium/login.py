#!/usr/bin/env python
from selenium import webdriver
from chromedriver_py import binary_path # this will get you the path variable
from selenium.webdriver.chrome.options import Options as ChromeOptions
import os

# Start the browser and login with standard_user
def login(user, password):
    print('Starting the browser...')
    
    # Set the chromedriver path
    chromedriver_path = "/home/azureuser/.local/lib/python3.6/site-packages/chromedriver_py/chromedriver_linux64"
    
    options = ChromeOptions()
    options.add_argument("--headless")  # Run Chrome in headless mode
    
    driver = webdriver.Chrome(executable_path=chromedriver_path, options=options)
    
    print('Browser started successfully. Navigating to the demo page to login.')
    driver.get('https://www.saucedemo.com/')

    # Perform login
    driver.find_element_by_id('user-name').send_keys(user)
    driver.find_element_by_id('password').send_keys(password)
    driver.find_element_by_id('login-button').click()
    print('Login completed.')

login('standard_user', 'secret_sauce')