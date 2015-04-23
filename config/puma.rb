threads Integer(ENV['MIN_THREADS'] || 8), Integer(ENV['MAX_THREADS'] || 8)

preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'
