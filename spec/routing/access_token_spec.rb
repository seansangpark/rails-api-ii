# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'access tokens routes' do
  it 'should reoute to access_tokens create action' do
    expect((post '/login')).to route_to('access_tokens#create')
  end

  it 'should route to access_tokens destroy action' do
    expect((delete '/logout')).to route_to('access_tokens#destroy')
  end
end
