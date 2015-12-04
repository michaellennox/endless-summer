class String

  def to_wavecase
    # thing = split().map do |x|
    #   x.split(//).map.with_index { |w, i|  i % 2 != 0 ? w.upcase : w.downcase}.join
    # end
    #
    # thing.join(' ')

    # self.gsub!(/#{x}/i) {|x| x.downcase! ? dictionary[x].capitalize : dictionary[x]}

    counter = 1
    gsub(/[a-z0-9A-Z]/) do |match|
      counter += 1
      counter % 2 != 0 ? match.upcase : match.downcase
    end
  end

end
