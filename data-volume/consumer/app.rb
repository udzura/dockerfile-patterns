require 'sinatra'

get '/' do
  access = File.read("/data/access.log") rescue "none."
  <<-EOH
<html><body>
<h1>Pusher's access log</h1>
<pre>
#{access}
</pre>
</body></html>
  EOH
end
