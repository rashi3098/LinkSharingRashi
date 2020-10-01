package linksharing3

class BootStrap {

    def init = { servletContext ->

        createUser()
        createTopic()
        createSubs()
        createResource()
        createReadingItems()
        createResourceRatings()
    }
    def destroy = {
    }

    def createUser(){
        User u_admin= new User(firstName: "Gautam", lastName: "Gupta", email: "gg0918914@gmail.com", password: "gautam123",
           confirmPassword: "gautam123", userName: "Goti", admin: "true", active: "true", photo: "na")
        u_admin.save()
        User u1= new User(firstName: "Nitin", lastName: "Sheoran", email: "nitin2123@gmail.com", password: "Niti123",
                confirmPassword: "Niti123", userName: "Nits", admin: "false", active: "true", photo: "na")
        u1.save()
        User u2= new User(firstName: "Himanshu", lastName: "Singh", email: "Hi918914@gmail.com", password: "Him123",
                confirmPassword: "Him123", userName: "Himan", admin: "false", active: "true", photo: "na")
        u2.save()
        User u3= new User(firstName: "Gautam1", lastName: "Gupta1", email: "gg09189141@gmail.com", password: "gautam1123",
                confirmPassword: "gautam1123", userName: "Goti1", admin: "false", active: "true", photo: "na")
        u3.save()
        Integer countUsers = User.count()
    }
    def createTopic(){
        List<String> l=["Grails","Java","Groovy","Spring","HTML","CSS","JavaScript","MySQL","Servlets"
                        ,"Linux","Git","Bootstrap","JQuery","C++","Python","Big-data","Machine Learning",
                        "Ms Excel","R","C"]
        int i=0
        if(Topic.count==0){
            User.list().each{
                user-> (1..5).each {
                    it ->
                        if(i%5==0)
                        {
                            Topic t= new Topic(topicName: "${l[i]}", createdBy: user, visibility: Topic.Visibility.Private)
                            t.validate()
                                t.save()
                                user.addToTopics(t)

                        }
                        else
                        {
                            Topic t1= new Topic(topicName: "${l[i]}", createdBy: user, visibility: Topic.Visibility.Public)
                            t1.validate()
                                t1.save()
                                user.addToTopics(t1)

                        }
                        i++
                }
            }
        }
    }
  def createResource(){
      Topic.list().each { Topic topic ->

          File file = new File("/home/gautamgupta/g/Search.html")
          String path=file.getAbsolutePath()

          1.times {
              Resource documentResource = new DocumentResource(description: "topic ${topic.topicName} doc", createdBy: topic
                      .createdBy, filePath: path, topic: topic)

              Resource linkResource = new LinkResource(description: "topic ${topic.topicName} link", createdBy: topic
                      .createdBy, url: "https://www.youtube.com", topic: topic)

              if (documentResource.save(flush:true)) {
                  log.info "${documentResource} saved by ${topic.createdBy} for ${topic}"
                  topic.addToResources(documentResource)
                  topic.createdBy.addToResources(documentResource)
              } else {
                  log.error "${documentResource} not saved--- ${documentResource.errors.allErrors}"
              }

              if (linkResource.save(flush:true)) {
                  log.info "${linkResource} saved by ${topic.createdBy} for ${topic}"
                  topic.addToResources(linkResource)
                  topic.createdBy.addToResources(linkResource)
              } else {
                  log.error "${linkResource} not saved--- ${linkResource.errors.allErrors}"
              }

          }

      }
  }
    def createSubs(){
        User.list().each{
            User u-> Topic.list().each{
                Topic t->
                    if(Subscription.findByTopicAndCreatedBy(t,u)==null) {
                        if(u.admin)
                        {
                            Subscription s = new Subscription(createdBy: u, topic: t, seriousness: Subscription.Seriousness.Serious)
                            t.addToSubscriptions(s)
                            u.addToSubscriptions(s)
                        }
                        else
                        {
                            Subscription s = new Subscription(createdBy: u, topic: t, seriousness: Subscription.Seriousness.Casual)
                            t.addToSubscriptions(s)
                            u.addToSubscriptions(s)
                        }

                    }
            }

        }
    }
    def createReadingItems(){
        User.list().each { User user ->
            Topic.list().each { Topic topic ->

                if (Subscription.findByTopicAndCreatedBy(topic, user)) {
                    topic.resources.each { resource ->
                        if (resource.createdBy != user)
                        {
                            ReadingItem readingItem = new ReadingItem(user: user, resource: resource, isRead: false)
                            readingItem.save(flush:true)
                            resource.addToReadingItems(readingItem)
                            user.addToReadingItems(readingItem)
                        }
                        else
                        {
                            ReadingItem readingItem = new ReadingItem(user: user, resource: resource, isRead: true)
                            readingItem.save(flush:true)
                            resource.addToReadingItems(readingItem)
                            user.addToReadingItems(readingItem)
                        }
                    }
                }
            }
        }

    }

    def createResourceRatings() {

        User.list().each { User user ->
            ReadingItem.findAllByUser(user).each{ ReadingItem readingItem ->

                if (readingItem.isRead) {
                    ResourceRating resourceRating = new ResourceRating(score: (Math.random()*4+1),
                            createdBy: readingItem.user,
                            resource: readingItem.resource)
                    resourceRating.save(flush:true)
                    readingItem.resource.addToRatings(resourceRating)

                }
            }
        }
    }

}
