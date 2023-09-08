class AtlaFacade
  attr_reader :nation_name, :service

  def initialize(nation)
    @nation_name = nation
    @service = AtlaService.new
  end
  
  def nation_characters 
    json =  @service.nation_search(@nation_name)

    json.map do |info|
      Character.new(info)
    end
  end
end