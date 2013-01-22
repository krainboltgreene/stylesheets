module StyleSheets
  module DSL
    def style(path, options = {}, &block)
      Style.new(path, options, &block)
    end
  end
end
