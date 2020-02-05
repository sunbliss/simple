module Jekyll
module DateFilter
  MONTHS = %w(Ιανουαρίου Φεβρουαρίου Μαρτίου Απριλίου Μαϊου Ιουνίου Ιουλίου Αυγούστου Σεπτεμβρίου Οκτωβρίου Νοεμβρίου Δεκεμβρίου)

  def greek_long_month(input)
    MONTHS[input.strftime("%m").to_i - 1]
    end
  end
end

Liquid::Template.register_filter(Jekyll::DateFilter)
