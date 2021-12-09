require 'json'

namespace :mc_import do
  desc "TODO"
  task JsonImport: :environment do
    path = "public/resources/model_files/"
    items = Dir.entries(path).grep(/.json/).sort
    items.each do | item |
        BaseItem.create(path: item, model_type_id: 1)
    end
  end
end
