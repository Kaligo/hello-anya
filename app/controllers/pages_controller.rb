require 'base64'

class PagesController < ApplicationController
  
  # index is a public page
  def index
    begin
      anya_path = Rails.application.config.anya_dir
      image = (anya_path + params.fetch(:img, 'anya.png')).gsub("../", "")
      file = File.open(image)
      @img = Base64.encode64(file.read)
      file.close
      
      @anyas = []
      anya_pattern = anya_path + '*.txt'
      Dir.glob(anya_pattern) do |filename|
        anya = File.open(filename)
        @anyas.append(anya.read)
        anya.close
      end
    rescue => e
      image = anya_path + 'anya.png'
      file = File.open(image)
      @img = Base64.encode64(file.read)
      file.close
    end
  end
end
