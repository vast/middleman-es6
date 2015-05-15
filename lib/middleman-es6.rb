require "middleman-core"
require "middleman-es6/template"

class MiddlemanEs6Extension < ::Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super

    register_es6_template
  end

  def register_es6_template
    ::Tilt.register MiddlemanEs6::Template, "es6"
    ::Sprockets.register_engine ".es6", MiddlemanEs6::Template
  end
end

::Middleman::Extensions.register(:es6, MiddlemanEs6Extension)
