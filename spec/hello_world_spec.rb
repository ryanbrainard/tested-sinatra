require 'hello_world'  # <-- your sinatra app
require 'rspec'
require 'rack/test'

set :environment, :test

describe 'The HelloWorld App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "says hello" do
    get '/'
    last_response.should be_ok
    last_response.body.should == 'Hello World'
  end

  it "says bye" do
    get '/'
    last_response.should be_ok
    last_response.body.should == 'Goodbye World'
  end
end

