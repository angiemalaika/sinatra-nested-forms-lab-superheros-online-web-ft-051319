class SuperHero
    attr_reader :name, :power, :bio
  
    def self.all
      @@all  []
    end
  
    def initialize(params)
      @name  = params[:name]
      @power = params[:power]
      @bio   = params[:bio]
      self.save
    end
  
    def save
      self.class.all << self
    end
  end