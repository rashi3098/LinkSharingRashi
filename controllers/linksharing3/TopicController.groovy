package linksharing3

import grails.converters.JSON

class TopicController {

    def index() { }

    def createtopic(){
        //User user= session.getAttribute("user1") as User
        User u= User.findById((params.id) as long)
        String v= params.get("visi")
        Topic t=new Topic(topicName:params.get("topicName"),  createdBy: u)
        if(v=="public"||v=="PUBLIC"||v=="Public"){
            t.visibility= Topic.Visibility.Public
        }
        else{
            t.visibility= Topic.Visibility.Private
        }

        t.validate()
        if(t.hasErrors()) {
            t.errors.allErrors.each {
                println it
            }
        }
            t.save(flush:true)
        u.addToTopics(t)
        Subscription s = new Subscription(createdBy: u, topic: t, seriousness: Subscription.Seriousness.Serious)
        s.validate()
        if(s.hasErrors()){
            s.errors.allErrors.each {
                println it
            }
        }
        s.save(flush: true)
        t.addToSubscriptions(s)
        u.addToSubscriptions(s)
        session.setAttribute("user1", u)
        redirect(controller:"dashboard" , action :"dashboard")
    }

    def deletetopic(){
        User u= session.getAttribute("user1") as User
        User user= User.get(u.id)
        Topic t= Topic.findById(params.get("id") as long)
        user.removeFromTopics(t)
        t.delete(flush: true)

       redirect(controller: "dashboard", action: "dashboard")

    }
    def topicshow(){
            User u= session.getAttribute("user1") as User
            def t= Topic.findById(params.get("id") as long)
            render(view: "topicshow", model: [t: t, u: u])
    }
    def edittopic(){
      def topic= Topic.findById(params.get("id") as long)
        topic.topicName= params.get("edit") as String
        topic.validate()
        if(topic.hasErrors()){
            topic.errors.allErrors.each {
                println it
            }
        }
        else{
            topic.save(flush: true)
            render([u: session.getAttribute("user1") as JSON])
        }
    }

    def changePrivacy(){
        User u= session.getAttribute("user1") as User
        def top= Topic.findById(params.get("id") as long)
        def p= params.get("privacy")
        if(p=="public" || p=="PUBLIC" || p=="Public"){
            top.visibility= Topic.Visibility.Public
        }
        else{
            top.visibility= Topic.Visibility.Private
        }
        top.validate()
        if(top.hasErrors())
        {
            top.errors.allErrors.each {
                println it
            }
        }
        else
            top.save(flush: true)

      redirect(url: request.getHeader("referer"), params: [u: u])
       // session.setAttribute("user1", u)
      //  render([u: session.getAttribute("user1") as JSON])
    }
}
