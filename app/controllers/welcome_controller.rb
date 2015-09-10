class WelcomeController < ApplicationController
  def show
    individuals = %w(Tony Sebastian Bo Marcus Dennis Tarik)
    @person1 = individuals[(Date.today - Date.new(2015,1,1)).days % individuals.length]
    individuals.shift(individuals.length / 3)
    @person2 = individuals[(Date.today - Date.new(2015,1,1)).days% individuals.length]
    individuals.shift(individuals.length / 3)
    @person3 = individuals[(Date.today - Date.new(2015,1,1)).days% individuals.length]
  end
end
