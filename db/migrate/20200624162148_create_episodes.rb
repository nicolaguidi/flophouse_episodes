class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      enable_extension 'hstore' unless extension_enabled?('hstore')
      
      t.integer :number
      t.string  :title
      t.text    :description
      t.binary  :poster
      t.string  :url
      t.binary  :audio
      t.text    :hosts, array: true, default: []
      t.text    :guests, array: true, default: []
      t.hstore  :recommandations
      t.boolean :live
      t.string  :venue
      t.date    :release
      t.text    :links, array: true, default: []
      
      t.timestamps
    end
  end
end
