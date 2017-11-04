FactoryGirl.define do
  sequence :title do |n| 
    "The Title_#{Random.rand(5000)+n}"
  end
  
  factory :book do
    title
    author 'John Bigboote'
    association(:genre)
    association(:user)
  end
end