module Teambox
  class Person < Teambox::Resource
    def user
      get_reference('User', @data['user_id'])
    end
    
    def project
      get_reference('Project', @data['project_id'])
    end
    
    def url
      "/projects/#{@data['project_id']}/people/#{@data['id']}"
    end
  end
end