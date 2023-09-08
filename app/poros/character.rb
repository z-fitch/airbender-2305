class Character
  attr_reader :name, :allies, :enemies, :affiliation, :photo

  def initialize(params)
    # require 'pry'; binding.pry
    @name = params[:name]
    @allies = format_allies(params[:allies])
    @enemies = format_enemies(params[:enemies])
    @affiliation = params[:affiliation]
    @photo = params[:photoUrl]
  end

  def format_allies(info)
    if info.count == 0
      final_info = "None"
    else
      final_info = info.join(", ")
    end
    final_info
  end

  def format_enemies(info)
    if info.count == 0
      final_info ="None"
    else
      final_info = info.join(", ")
    end
    final_info
  end
end