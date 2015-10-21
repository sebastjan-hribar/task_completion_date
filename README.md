# TaskCompletionDate

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/task_completion_date`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'task_completion_date'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install task_completion_date

## Usage

The calculate_task_completion is a rought draft of a method which calculates the date and time completion
for a given task and takes the following parameters:
- start_date => start date of a task
- task_start_time => start time of a task (currently integer or float)
- work_end_time => working hours end time (currently integer or float)
- workload => workload of a task in hours (currently integer or float)
- work_hours_in_day => number of working hours in a day (currently integer or float)
- holidays => an array of holidays to exlude from the date calculation

The current output is a puts to command prompt:
puts "Task completion date and time are: #{final_day}, #{final_hour}."

Example
calculate_task_completion(Date.new(2015,10,20), 9, 17, 80, 7.5, [Date.new(2015,10,22), Date.new(2015,10,25)])

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/task_completion_date. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

