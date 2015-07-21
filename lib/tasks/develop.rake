require "factory_girl"
namespace :develop do
  desc "Create data use factory_girl"
  task create_data: :environment do
    user = FactoryGirl.create :user, email: "iloveyou@gmail.com",
    5.times{FactoryGirl.create :user}
    3.times{FactoryGirl.create :category}

    category = Category.first
    10.times{FactoryGirl.create :question, category: category}
    2.times{FactoryGirl.create :exam, user: user, category: category}
  end
end
