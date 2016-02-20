json.array!(@web_configs) do |web_config|
  json.extract! web_config, :id, :directory, :scan_interval, :old
  json.url web_config_url(web_config, format: :json)
end
