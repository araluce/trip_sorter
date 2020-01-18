class TripSorter

  class NoRouteException < Exception; end

  attr_reader :unordered_cards, :cards

  def initialize(unordered_cards)
    @unordered_cards = unordered_cards
    @cards = []

    check_itinerary_consistence
  end

  def sort_itinerary
    build_itinerary_connections until cards.count == unordered_cards.count
    cards
  end

  private

  def check_itinerary_consistence
    origin_dest = []
    unordered_cards.each do |card|
      origin_dest.include?(card.origin) ? origin_dest.delete(card.origin) : origin_dest << card.origin
      origin_dest.include?(card.destination) ? origin_dest.delete(card.destination) : origin_dest << card.destination
    end

    raise NoRouteException.new("It's not a continuous route") if origin_dest.count > 2
  end

  def origin
    @cards.first.origin
  end

  def destination
    @cards.last.destination
  end

  def build_itinerary_connections
    unordered_cards.each do |card|
      cards << card if cards.empty? || card.origin == destination
      cards.unshift card if card.destination == origin
    end
  end

end