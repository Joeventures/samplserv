require "httparty"
require "pry"

class SamplParty
  include HTTParty
  base_uri "http://localhost:4567"

  def better()
    SamplParty.post("/better", :body => {:v => rand(1..2)})
  end

  def after()
    SamplParty.post("/after", :body => {:v => rand(1..3)})
  end

  def beat
    SamplParty.post("/beat")
  end

  def doit()
    SamplParty.post("/doit", :body => { v: rand(1..2) })
  end

  def ever()
    SamplParty.post("/ever", :body => {v: rand(1..3)})
  end

  def faster()
    SamplParty.post("/faster", body: {v: rand(1..2)})
  end

  def harder()
    SamplParty.post("/harder", body: {v: rand(1..2)})
  end

  def hour()
    SamplParty.post("/hour", body: {v: rand(1..3)} )
  end

  def makeit()
    SamplParty.post("/makeit", body: {v: rand(1..2)} )
  end

  def makesus()
    SamplParty.post("/makesus", body: {v: rand(1..2)})
  end

  def morethan()
    SamplParty.post("/morethan", body: {v: rand(1..3)})
  end



  def stop
    SamplParty.get("/stop")
  end
end

punkit = SamplParty.new
binding.pry
punkit.beat
sleep 16.2
punkit.doit
sleep 0.5
punkit.ever
sleep 0.5
punkit.faster
sleep 0.5
punkit.harder
sleep 1
punkit.makeit
sleep 0.5
punkit.morethan
sleep 0.5
punkit.ever
sleep 0.5
punkit.after
binding.pry

