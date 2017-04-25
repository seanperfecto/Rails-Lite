require 'rack'

app = Proc.new do |env|
  req = Rack::Request.new(env)
  res = Rack::Response.new
  after = req.path
  res['Content-Type'] = 'text/html'
  res.write(after)
  res.finish
end

Rack::Server.start(
  app: app,
  Port: 3000
)
