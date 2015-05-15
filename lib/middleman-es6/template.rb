require "babel/transpiler"

module MiddlemanEs6
  class Template < Tilt::Template
    self.default_mime_type = "application/javascript"

    def prepare
    end

    def evaluate(context, locals, &block)
      @output ||= Babel::Transpiler.transform(data)["code"]
    end
  end
end
