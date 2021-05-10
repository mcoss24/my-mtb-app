namespace :slurp do
  desc "TODO"
  task spots: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "Location Table.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    #puts csv
    csv.each do |row|
      #p row 
      #puts row.to_hash
      t = Spot.new
      t.location = row["Location"]
      t.winter = row["Winter"]
      t.spring = row['Spring']
      t.summer = row['Summer']
      t.fall = row['Fall']
      t.desert = row['Desert']
      t.medditerannean = row['Medditerannean']
      t.temperate = row['Temperate']
      t.downhill = row['Downhill']
      t.cross_country = row['Cross-Country']
      t.west = row['West']
      t.mountain = row['Mountain']
      t.east = row['East']
      t.save
      puts "#{t.location}, #{t.winter} saved"
    end
    puts "There are now #{Spot.count} rows in the spots table"

  end

end
