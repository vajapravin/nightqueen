Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'yx4kTSXP7JVnkj6Avlx1Cw', 'zOsM2GFrINzGySuRDZ2OQgQ0tYxmBd0uV75yYJB4jU'
  provider :facebook, '339602056114980', '83500c2f8b538521b552034cf87910c8', {:client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}}
end
