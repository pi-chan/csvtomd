require "csvtomd/version"

module CsvToMd
  class << self
    def convert(text)
      return nil unless text.class == String
      
      @column_count = nil
      @text = text

      if @text.lines.count > 1
        table_lines = @text.lines.map { |l| convert_line(l) }
        table_lines.insert(1, separator)
        table_lines.join("\n")
      else
        @text
      end
    end

    def convert_line(line)
      tokens = line.chomp.split(",")
      (column_count - tokens.length).times { tokens << "" }
      table_line = tokens.join("|")
      "|#{table_line}|"
    end

    def separator
      sep = (["---"]*column_count).join("|")
      "|#{sep}|"
    end

    def column_count
      @column_count ||= calc_column_count
    end

    def calc_column_count
      count = 0
      @text.lines.each do |line|
        item_count = line.split(',').length
        count = item_count if item_count > count
      end
      @column_count = count
    end
  end
end
