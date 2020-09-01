require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

run ApplicationController
use Objective_4sController
use Objective_3sController
use Objective_2sController
use Objective_1sController
use ListsController
use PlansController
use TacticsController
use StrategiesController
use ObjectivesController
use GoalsController
