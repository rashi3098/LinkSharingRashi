package linksharing3

import org.springframework.web.multipart.MultipartFile

class ResourceController {

    def index() {
        User u= session.getAttribute("user1") as User
        User user= User.get(u.id)
        redirect(controller: "dashboard", action: "dashboard")
    }

    def gUpload(){
        MultipartFile myFile= params.docFile;
        File file = new File("/home/gautamgupta/g/${myFile.originalFilename}")
        myFile.transferTo(file)
        String path = file.getAbsolutePath()
        User u= session.getAttribute("user1") as User
        def t= params.get("t-doc")
        Topic topic= Topic.findByTopicName(t)
        Resource r= new DocumentResource(description: params.get("document"), topic: Topic.findByTopicName(t), createdBy: u, filePath: path)
        r.validate()
        if(r.hasErrors()) {
            r.errors.allErrors.each {
                println it
            }
        }
            else {
                r.save(flush:true)
                topic.addToResources(r)
                topic.createdBy.addToResources(r)

            }
        redirect (controller:"dashboard",action:"dashboard")
        }

      def gLinkUpload(){
          User u= session.getAttribute("user1") as User
          def t= params.get("t-url")
          println t
          println u
          Topic topic= Topic.findByTopicName(t)
          Resource r= new LinkResource(description: params.get("document"), topic: Topic.findByTopicName(t), createdBy: u, url: params.get("url"))
          r.validate()
          if (r.hasErrors())
          {
              r.errors.allErrors.each {
                  println it
              }
          }
          else
          {
              r.save()
              topic.addToResources(r)
              topic.createdBy.addToResources(r)

          }
          redirect (controller:"dashboard",action:"dashboard")



      }

     def download(){
         DocumentResource r= Resource.findById(params.get("id") as long)
         File file= new File("${r.filePath}")
         byte[] orderPDF= file.getBytes()

         response.setHeader("Content-disposition", "attachment; filename=" + file.name)
         response.contentLength= orderPDF.length
         response.outputStream << file.bytes
         redirect(controller: "dashboard", action: "dashboard")
     }

    def viewpost(){
        User u= session.getAttribute("user1") as User
        Resource resource= Resource.findById(params.get("id") as long)
        render(view: "viewpost", model: [r: resource, u: u])
    }

    def delete(){
        User u= session.getAttribute("user1") as User
        if(u){
            Resource resource= Resource.findById(params.get("id") as long)
            if(resource){
                if(u.admin||resource.createdBy.id == u.id){
                    resource.delete(flush: true)
            redirect(action: "index", controller: "resource", params: [id: resource.id])
                }
            }
        }

    }
}




