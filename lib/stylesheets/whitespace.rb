module StyleSheets
  module Whitespace
    DEFAULT_INDENTATION_CHARACTER = "  "
    DEFAULT_NEWLINE_CHARACTER = "\n"

    attr_accessor :compress

    def newline
      whitespace DEFAULT_NEWLINE_CHARACTER
    end

    def indent
      whitespace DEFAULT_INDENTATION_CHARACTER
    end

    def space
      whitespace " "
    end

    private

    def whitespace(with_whitespace)
      unless compress then with_whitespace else "" end
    end
  end
end
