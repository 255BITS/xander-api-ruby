# An API for using [http://xander.io](Xander.io) for Multivariate Analysis

Xander.io is a persistent multivariate analytics platform.  Xander makes it easy to run A/B/n tests on just about anything.  You have enough
to worry about when running statistics.  Add your data to our limitless cloud, and run measurements and statistics against it.

## Use cases
Xander is great with your data.  Integrate
closely with your e-commerce solution. Discover the best
combination of details to sell your product.

* Creating an A/B/n email campaign
* Test your landing page(See [http://xander.io](xander.io))
* Improve your sales numbers
* Measuring feature and usage engagement
* More.  Anywhere you want to run an A/B/n or multivariate test.

## Examples

### Which color candy is better
```ruby
require 'xander'

experiment = Xander::Experiment.new

red = {color: 'red'}
blue = {color: 'blue'}

# 10 people got a red candy
10.times { experiment.impression red }
# 3 people liked it
3.times { experiment.conversion red }


# 10 people also got a blue candy
10.times { experiment.impression blue }
# only 1 liked it
1.times { experiment.conversion blue }


best = experiment.best # best is equal to red

```

### Creating an email campaign
```ruby
require 'xander'

experiment = Xander::Experiment.find_or_create("my-email-campaign")

readEmailListFromFile.each do |email_address|
  variant = experiment.suggestNext
  sendEmailForVariant(email_address, variant)
  experiment.impression variant
end


# Later, add a click handler to measure conversion
class EmailTracker
  def convert(variant)
    Xander::Experiment.find_or_create("my-email-campaign").conversion(variant)
  end
end

#Another file, where you wish to run reports
class Reporter
  def campaign_stats
    Xander::Experiment.find_or_create("my-email-comapign").statistics()
  end
end

```

# API Reference

## Classes
### Experiment
* Todo, is this right?

### Variant


## Related
* [http://github.com/255BITS/xander](xander.js) - measure engagement on your website by defining goals and users.
* [http://github.com/255BITS/xander-core](xander-core) - an open source multivariate testing library
