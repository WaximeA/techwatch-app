require "rack/cors"
use Rack::Cors do

  allow do
    origins "*"
    resource "*",
             :headers => :any,
             :methods => [:get, :post, :delete, :put, :options, :patch]
  end
end