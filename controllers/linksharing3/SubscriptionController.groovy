package linksharing3

import grails.converters.JSON

class SubscriptionController {
      TopPostService topPostService
    def index() { }

     def subscribe(){
      User u= session.getAttribute("user1") as User
         User user= User.get(u.id)
         Topic t= Topic.findById(params.get("id") as long)
         Subscription s= new Subscription(user: user, topic: t, seriousness: Subscription.Seriousness.Serious)
         s.save(flush: true)
         topPostService.createreadingitems(t, user)
         t.addToSubscriptions(s)
         user.addToSubscriptions(s)
         session.setAttribute("user1", user)
         redirect(url: request.getHeader("referer"), params:[u: session.getAttribute("user1")])
     }
    def unsubscribe(){
       User u= session.getAttribute("user1") as User
        User user= User.get(u.id)
        Topic t= Topic.findById(params.get("id") as long)
        Subscription s= Subscription.findByTopicAndCreatedBy(t, user)
        user.removeFromSubscriptions(s)
        t.removeFromSubscriptions(s)
        s.delete(flush: true)
        topPostService.deletereadingitems(t, user)
        session.setAttribute("user1",user)
        redirect(url: request.getHeader("referer"), params:[u: session.getAttribute("user1")])
    }

    def changeSeriousness(){
    User u= session.getAttribute("user1") as User
        def top= Topic.findById(params.get("id") as long)
        def sub= Subscription.findByTopicAndCreatedBy(top, u)
        def s= params.get("serious")
        if(s=="serious" || s=="SERIOUS" || s=="Serious"){
            sub.seriousness= Subscription.Seriousness.Serious
        }
        else if(s=="Casual" || s=="CASUAL" || s=="casual"){
            sub.seriousness= Subscription.Seriousness.Casual
        }
        else{
            sub.seriousness= Subscription.Seriousness.VerySerious
        }
        sub.validate()
        if(sub.hasErrors())
        {
            sub.errors.allErrors.each {
                println it
            }
        }
        else
            sub.save(flush: true)
        redirect(url: request.getHeader("referer"), params: [u: u])
       // session.setAttribute("user1", user)
      //  render([user: user] as JSON)
    }

  def invite(){
     User user= User.findByEmail(params.get("email"))
      Topic topic= Topic.findByTopicName(params.get("invitetopic"))
      if(user && !Subscription.findByTopicAndCreatedBy(topic,user)){
          Subscription s= new Subscription(createdBy: user, topic: topic, seriousness: Subscription.Seriousness.Serious)
          s.validate()
          s.save(flush: true)
          topPostService.createreadingitems(topic, user)
          topic.addToSubscriptions(s)
          user.addToSubscriptions(s)
          redirect(url: request.getHeader("referer"), params: [u: session.getAttribute("user1")])
      }
      else{
          render "error"
      }
  }
}
