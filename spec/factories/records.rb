FactoryGirl.define do
  factory :record do
    description {"1ª Vara de Registro Público"}
    email {"a@a.com"}
    datarecord { Date.new(2010, 01, 01) }
    dataprotocol { Date.new(2010, 01, 01) }
    origin {"Qualquer"}
    part {"Qualquer"}
    topic {"Qualquer"}
  end


end
