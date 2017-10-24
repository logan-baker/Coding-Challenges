require 'lineup/import'
require 'lineup/imports/comma_import'
require 'lineup/imports/pipe_import'
require 'lineup/imports/space_import'
require 'lineup/person'

# File.dirname to return an absolute path or relative if given
# Convert pathname to an absolute, expand_path(p1, p2 = v2)

  let(:comma_file)  { File.expand_path("../../data/comma.txt", __FILE__) }
  let(:pipe_file)   { File.expand_path("../../data/pipe.txt", __FILE__) }
  let(:space_file)  { File.expand_path("../../data/space.txt", __FILE__) }
  let(:people)  { [] }

  # run the parser
  before do
    people << Lineup::CommaImport.take(file_path: comma_file)
    people << Lineup::PipeImport.take(file_path: pipe_file)
    people << Lineup::SpaceImport.take(file_path: space_file)
  end
