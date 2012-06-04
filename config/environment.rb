#encoding: utf-8
# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Baeta::Application.initialize!

Time::DATE_FORMATS[:ru_datetime] = "%Y.%m.%d в %k:%M:%S"
#поскольку я использовал кириллицу, мне пришлось в начале прописать:

