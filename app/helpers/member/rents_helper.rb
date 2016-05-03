module Member::RentsHelper

  def render_due_day(rent)
    rent.created_at.advance(days: +3).strftime("%Y-%m-%d")
  end

  def total_price(rent)
    rent.books.inject(0) { |sum, book| sum + book.price }
  end

  def render_status(rent)
    all_returned = rent.books.where(returned: true).count
    if all_returned == rent.books.size
      "已還書"
    else
      "租借中"
    end
  end

  def render_book_status(book)
    if book.returned = false
      "租借中"
    else
      "已還書"
    end
  end

end
