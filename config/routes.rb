EmberBloggr::Application.routes.draw do
  class FormatFinder
    attr_accessor :mime_type

    def initialize(format)
      @mime_type = Mime::Type.lookup_by_extension(format)
    end

    def matches?(request)
      request.format == mime_type
    end
  end

  resources :posts, except: :edit, :constraints => FormatFinder.new(:json)
  get '*foo', :to => 'ember#index', :constraints => FormatFinder.new(:html)
  get '/', :to => 'ember#index', :constraints => FormatFinder.new(:html)
end
