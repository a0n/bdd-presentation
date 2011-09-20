require 'typhoeus'
class Client


  def initialize(hash = {} )

    @host = "http://webapp.sharenotes.de"
    hash.each do |k,v|
      self.instance_variable_set("@#{k}", v)  ## create and initialize an instance variable for this key/value pair
      self.class.send(:define_method, k, proc{self.instance_variable_get("@#{k}")})  ## create the getter that returns the instance variable
      self.class.send(:define_method, "#{k}=", proc{|v| self.instance_variable_set("@#{k}", v)})  ## create the setter that sets the instance variable
    end
  end


  def request(path)
    if @username and @password
      response = Typhoeus::Request.get(@host + path, :username => @username, :password => @password)
    else 
      response = Typhoeus::Request.get(@host + path)
    end
    return response
  end

  def get_account_json 
    self.request("/account.json")
  end


end
