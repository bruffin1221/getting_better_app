require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

run ApplicationController
use PlansController
use TacticsController
use StrategiesController
use ObjectivesController
use GoalsController
