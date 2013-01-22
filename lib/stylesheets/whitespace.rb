module StyleSheets
  module Whitespace
    DEFAULT_INDENTATION_COUNT = 2
    DEFAULT_INDENTATION_CHARACTER = " "

    def newline(allow = true)
      allow ? "\n" : ""
    end

    def indent(allow = true)
      allow ? DEFAULT_INDENTATION_CHARACTER * DEFAULT_INDENTATION_COUNT : ""
    end

    def space(allow = true)
      allow ? " " : ""
    end
  end
end
