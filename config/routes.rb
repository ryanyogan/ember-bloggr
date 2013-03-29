EmberBloggr::Application.routes.draw do
  class FindFormat
    attr_accessor :mime_type

    def initialize format
      @mime_types = Mime::Type.lookup_by_extension format
    end

    def match? request
      request.format == mime_type
    end
  end

  resources :posts, except: :edit, constraints: FindFormat.new(:json)
  get '*foo', to: 'ember#index', constraints: FindFormat.new(:html)
  get '/', to: 'ember#index', constraints: FindFormat.new(:html)
end
