module Jekyll
    module GreekDates
        MONTHS = {"01" => "Ιανουαρίου", "02" => "Φεβρουαρίου", "03" => "Μαρτίου",
                "04" => "Απριλίου", "05" => "Μαΐου", "06" => "Ιουνίου",
                "07" => "Ιουλίου", "08" => "Αυγούστου", "09" => "Σεπτεμβρίου",
                "10" => "Οκτωβρίου", "11" => "Νοεμβρίου", "12" => "Δεκεμβρίου"}

        # http://man7.org/linux/man-pages/man3/strftime.3.html
        def greekDate(date)
            day = time(date).strftime("%e") # leading zero is replaced by a space
            month = time(date).strftime("%m")
            year = time(date).strftime("%Y")
            day+' '+MONTHS[month]+' '+year
        end

        def html5date(date)
            day = time(date).strftime("%d")
            month = time(date).strftime("%m")
            year = time(date).strftime("%Y")
            year+'-'+month+'-'+day
        end
    end
end

Liquid::Template.register_filter(Jekyll::GreekDates)