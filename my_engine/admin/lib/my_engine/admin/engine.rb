module MyEngine
  module Admin
    class Engine < ::Rails::Engine
      isolate_namespace MyEngine::Admin
    end
  end
end
