FactoryGirl.define do
  factory :recipe do
    name 'Gelo'
    cuisine 'Brasileira'
    food_type 'bebida'
    portion 1
    preparation_time 120
    difficulty 'Facil'
    ingredient 'Agua'
    steps 'Colocar agua no frezer e esperar congelar'
  end
end
