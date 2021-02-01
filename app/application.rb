class Application

  def call(env)
    resp = Rack::Response.new

    num1 = Kernel.rand(1..20)
    num2 = Kernel.rand(1..20)
    num3 = Kernel.rand(1..20)

    if num1 == num2 && num2 == num3
      resp.write "You Win!\n"
    else
      resp.write "You Lose!\n"
    end

    resp.write "#{num1}, #{num2}, #{num3}"
    # resp.write "Hello, World"
    resp.finish
  end

end
