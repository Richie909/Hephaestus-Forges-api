class TestController < ApplicationController
  def test
    render json: {hello: 'world'}
  end
end