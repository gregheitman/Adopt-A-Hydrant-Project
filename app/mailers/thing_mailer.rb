class ThingMailer < ActionMailer::Base
  default from: 'adoptahydrant@cityofboston.gov'

  def reminder(thing)
    @thing = thing
    @user = thing.user
    mail(to: thing.user.email, subject: ['Remember to shovel', thing.name].compact.join(' '))
  end
  def requestownership(thing)
    @thing = thing
    @user = thing.user
    mail(to: thing.user.email, subject: ['A user wants to take ownership!', thing.name].compact.join(' '))
  end
end
