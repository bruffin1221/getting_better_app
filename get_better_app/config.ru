require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

run ApplicationController
use TasksController
use Objective4sController
use Objective3sController
use Objective2sController
use Objective1sController
use TacticsController
use StrategiesController
use GoalsController
