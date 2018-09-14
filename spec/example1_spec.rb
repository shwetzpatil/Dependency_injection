require 'example1'

# describe Note do
#   it 'displays the format' do
#     note_1 = Note.new("week 2","Dependenct injection")
#     note_format_double = double :NoteFormatter, format: "Title: week 2\nDependenct injection"
#     expect(note_1.display).to eq("Title: #{note_1.title}\n#{note_1.body}")
#     # expect(note_1.display).to eq("Title: week 2\nDependenct injection")
#   end
# end
#
# describe NoteFormatter do
#   it 'foremat the given note' do
#     note_formatter = NoteFormatter.new
#     note_double = double :note, title: "week 2", body: "Dependenct injection"
#     expect(note_formatter.format(note_double)).to eq("Title: #{note_double.title}\n#{note_double.body}")
#     # expect(note_formatter).to eq("Title: #{title}\n#{body}")
#   end
# end

describe Note do
  it 'displays the format' do
    note_format_double = double :NoteFormatter
    note_1 = Note.new("week 2","Dependenct injection", note_format_double)
    expect(note_1.display).to eq("Title: #{note_1.title}\n#{note_1.body}")
    # expect(note_1.display).to eq("Title: week 2\nDependenct injection")
  end
end

describe NoteFormatter do
  it 'foremat the given note' do
    note_formatter = NoteFormatter.new
    note_double = double :note, title: "week 2", body: "Dependenct injection"
    expect(note_formatter.format(note_double)).to eq("Title: #{note_double.title}\n#{note_double.body}")
    # expect(note_formatter).to eq("Title: #{title}\n#{body}")
  end
end
