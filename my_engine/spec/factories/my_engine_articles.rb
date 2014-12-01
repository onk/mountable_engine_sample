FactoryGirl.define do
  factory :my_engine_article, :class => 'MyEngine::Article' do
    user nil
body "MyText"
  end

end
