# frozen_string_literal: true

# It handle toast related function
module ToastHelper
  # for set flash color
  def toast_color(key)
    case key
    when 'notice'
      '#b8daff'
    when 'warning'
      '#ffeeba'
    when 'success'
      '#c3e6cb'
    when 'error', 'recaptcha_error'
      '#f5c6cb'
    when 'alert'
      '#b8daff'
    else
      '#c3e6cb'
    end
  end

  # for set flash key
  def toast_key(key)
    case key
    when 'notice'
      'info'
    when 'warning'
      'warning'
    when 'success'
      'success'
    when 'error', 'recaptcha_error'
      'error'
    when 'alert'
      'info'
    else
      'success'
    end
  end

  # for set flash key
  def toast_title(key)
    case key
    when 'notice'
      'Notice'
    when 'warning'
      'Warning'
    when 'success'
      'Success'
    when 'error', 'recaptcha_error'
      'Error'
    when 'alert'
      'Alert'
    else
      'success'
    end
  end
end
