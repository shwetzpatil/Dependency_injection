class Note
  def initialize(title, body, formatter = NoteFormatter.new)
    @title = title
    @body = body
    @formatter = formatter

  end

  def display
    # @formatter.format(self)
    @formatter
  end

  attr_reader :title, :body
end

class NoteFormatter
  # def format(note)
    # "Title: #{note.title}\n#{note.body}"
    "Title: #{@title}\n#{@body}"
  # end
end
