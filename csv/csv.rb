require "csv"

# p CSV.read("data.csv")

# CSV.open("sample.csv","w") do |sample|
#   sample << ["place", "minTemp", "maxTemp"]
#   sample << ["Okinawa", "19", "28"]
#   sample << ["Kobe", "15", "20"]
#   sample << ["Tokyo", "17", "22"]
#   sample << ["Sapporo", "5", "12"]
# end

# product = CSV.read("fruit.csv")
# p product.transpose

# CSV.foreach('sample.csv') do |fg|
#     p "[#{fg[0]}] [#{fg[1]}] [#{fg[2]}]"
# end

# CSV.foreach("data.csv",headers: true) do |row|
#   p row.to_h.slice("place","minTemp")
# end


# # 更新を許可するカラムを定義
# def self.updatable_attributes
#     ["id", "name", "age"]
# end


CSV.open("sample.csv","w") do |csv|
  attributes = ["email","name","task"]
  csv << attributes

  @users.each do |user|
    csv << attributes.map{ |attribute| user[attribute]}
  end
end