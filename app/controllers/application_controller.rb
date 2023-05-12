# frozen_string_literal: true

class ApplicationController < ActionController::Base
  after_action :set_csrf_cookie

  protected

  def set_csrf_cookie
    cookies['X-CSRF-Token'] = form_authenticity_token
  end
  
  def check_naming(if:)
    puts 'OKaaaaaaay'
  end
  
  def something
    'something'
    puts 'hola'
  end

  def work
    puts 'work!'
    puts 'work more!'
  end
end
