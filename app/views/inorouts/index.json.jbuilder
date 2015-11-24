json.array!(@inorouts) do |inorout|
  json.extract! inorout, :id, :name, :serials, :RMA, :testing, :checkin, :checkout, :date
  json.url inorout_url(inorout, format: :json)
end
