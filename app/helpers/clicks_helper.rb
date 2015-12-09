module ClicksHelper
  def get_remote_ip(env)
    if addr = env['HTTP_X_FORWARDED_FOR']
      addr.split(',').first.strip
    else
      env['REMOTE_ADDR']
    end
  end
end
