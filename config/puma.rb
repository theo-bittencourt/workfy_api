threads Integer(ENV['MIN_THREADS'] || 6), Integer(ENV['MAX_THREADS'] || 6)

preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'
