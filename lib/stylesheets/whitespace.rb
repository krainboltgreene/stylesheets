module StyleSheets
  module Whitespace
    DEFAULT_INDENTATION_CHARACTER = "  "
    DEFAULT_NEWLINE_CHARACTER = "\n"


    def newline(compress = false)
      whitespace compress, DEFAULT_NEWLINE_CHARACTER
    end

    def indent(compress = false)
      whitespace compress, DEFAULT_INDENTATION_CHARACTER
    end

    def space(compress = false)
      whitespace compress, " "
    end

    private

    def whitespace(compress = false, with_whitespace)
      compress ? "" : with_whitespace
    end
  end
end
