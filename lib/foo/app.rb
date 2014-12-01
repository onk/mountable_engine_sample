class Foo < Sinatra::Base
  get "/" do
    "Hello, Foo World!"
  end

  get "/bar" do
    "Hello, FooBar World!"
  end
end

