# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :movie do
    sequence(:title){|n| "Batman #{n}" }
    sequence(:year){|n| "200#{n}"}
    superhero "Batman"
    mpaa_rating "PG-13"
    synopsis "Not the one with Heath Ledger"
    director "Terrence Malick"
  end
end