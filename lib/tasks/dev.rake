namespace :dev do
  task parse_go_station_list: :environment do
    GoStation.destroy_all

    url = 'https://wapi.gogoro.com/tw/api/vm/list';
    uri = URI(url)
    response = Net::HTTP.get(uri)
    json = JSON.parse(response)

    json['data'].each do |data|
      GoStation.create!(
        LocName: data['LocName'],
        latitude: data['Latitude'].to_s,
        longitude: data['Longitude'].to_s
      )
    end
    puts "have created gostations!"
    puts "now you have #{GoStation.count} gostations data!"
  end
end