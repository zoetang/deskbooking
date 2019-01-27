Then("responseHeaders should be {string}") do |string|
  puts @response.headers
end

Then("set me as logined") do
   @headers[:set_cookie] = @response.headers[:set_cookie]
end