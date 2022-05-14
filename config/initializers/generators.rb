Rails.application.config.generators do |g|
  # rails g controllerコマンドで作成されるファイルを制限
  g.skip_routes true
  g.assets false
  g.helper false
end
