def find_zh_TW(list)
  loc_name = 'Unknown'
  list['List'].each do |data|
    if data['Lang'] == 'zh-TW'
      loc_name = data['Value']
    end
  end

  return loc_name
end

namespace :dev do
  task parse_go_station_list: :environment do
    GoStation.destroy_all

    url = 'https://wapi.gogoro.com/tw/api/vm/list';
    uri = URI(url)
    response = Net::HTTP.get(uri)
    json = JSON.parse(response)

    json['data'].each do |data|
      name_list = JSON.parse(data['LocName'])
      name_zh_tw = find_zh_TW(name_list)

      address_list = JSON.parse(data['Address'])
      address_zh_tw = find_zh_TW(address_list)
      GoStation.create!(
        LocName: name_zh_tw,
        latitude: data['Latitude'].to_s,
        longitude: data['Longitude'].to_s,
        Address: address_zh_tw
      )
    end
    puts "have created gostations!"
    puts "now you have #{GoStation.count} gostations data!"
  end
end