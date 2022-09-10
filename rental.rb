require 'time'

class Rental
  attr_reader :person, :book
  attr_accessor :date

  def initialize(person:, book:)
    @date = DateTime.now.strftime('%Y/%m/%d %H:%M')

    @person = person
    person.rentals << self

    @book = book
    book.rentals << self
  end
end
