def hello_world(name="World")
  name = "World" if name == '' || name.nil?
  "Hello, #{name}!"
end
