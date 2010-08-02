module Teambox
  class Base
    extend Forwardable

    def_delegators :client, :get, :post, :put, :delete

    attr_reader :client

    def initialize(client)
      @client = client
    end

    # Teambox methods
    
    # Todos, Dividers, Note, Page
    
    # Activities indexes    
    # GET /api/1/activities
    def activities(query={})
      perform_get("/api/1/activities", :query => query)[:activities]
    end
    # GET /api/1/projects/:project_id/activities
    def project_activities(project_id, query={})
      perform_get("/api/1/projects/#{project_id}/activities", :query => query)[:activities]
    end
    # Activity show
    # GET api/1/projects/:project_id/activities/:id
    def activity(id, query={})
      perform_get("/api/1/activities/#{id}", :query => query)[:activity]
    end
    # GET /api/1/activities/:id
    def project_activity(project_id, id, query={})
      perform_get("/api/1/projects/#{project_id}/activities/#{id}", :query => query)[:activity]
    end    
    # Comments show
    # GET /api/1/projects/:project_id/comments/:id
    def project_comment(project_id, id, query={})
      perform_get("/api/1/projects/#{project_id}/comments/#{id}", :query => query)[:comment]
    end
    # GET /api/1/projects/:project_id/tasks/:task_id/comments/:id
    def project_task_comment(project_id, task_id, id, query={})
      perform_get("/api/1/projects/#{project_id}/tasks/#{task_id}/comments/#{id}", :query => query)[:comment]
    end
    # GET /api/1/projects/:project_id/conversations/:conversation_id/comments/:id
    def project_conversation_comment(project_id, conversation_id, id, query={})
      perform_get("/api/1/projects/#{project_id}/tasks/#{conversation_id}/comments/#{id}", :query => query)[:comment]
    end
    # Comments index
    # GET /api/1/projects/:project_id/comments
    def project_comments(project_id, query={})
      perform_get("/api/1/projects/#{project_id}/comments", :query => query)[:comments]
    end
    # GET /api/1/projects/:project_id/conversations/:conversation_id/comments
    def project_conversation_comments(project_id, conversation_id, query={})
      perform_get("/api/1/projects/#{project_id}/conversations/#{conversation_id}/comments", :query => query)[:comments]
    end
    # GET /api/1/projects/:project_id/tasks/:task_id/comments
    def project_task_comments(project_id, task_id, query={})
      perform_get("/api/1/projects/#{project_id}/tasks/#{task_id}/comments", :query => query)[:comments]
    end
    # Comment create
    # POST /api/1/projects/:project_id/comments
    def create_project_comment(project_id, query={})
      perform_post("/api/1/projects/#{project_id}/comments", :query => query)
    end
    # POST /api/1/projects/:project_id/tasks/:task_id/comments
    def create_project_task_comment(project_id, task_id, query={})
      perform_post("/api/1/projects/#{project_id}/tasks/#{task_id}/comments", :query => query)
    end
    # POST /api/1/projects/:project_id/conversations/:conversation_id/comments
    def create_project_conversation_comment(project_id, conversation_id, query={})
      perform_post("/api/1/projects/#{project_id}/conversations/#{conversation_id}/comments", :query => query)
    end
    # Comment convert
    # POST /api/1/projects/:project_id/comments/:id/convert
    def convert_project_comment(project_id, id, query={})
      perform_post("/api/1/projects/#{project_id}/comments/#{id}/convert", :query => query)
    end
    # Comment update
    # PUT /api/1/projects/:project_id/comments/:id
    def update_project_comment(project_id, id, query={})
      perform_put("/api/1/projects/#{project_id}/comments/#{id}", :query => query)
    end
    # PUT /api/1/projects/:project_id/conversations/:conversation_id/comments/:id
    def update_project_conversation_comment(project_id, conversation_id, id, query={})
      perform_put("/api/1/projects/#{project_id}/conversations/#{conversation_id}/comments/#{id}", :query => query)
    end
    # PUT /api/1/projects/:project_id/tasks/:task_id/comments/:id
    def update_project_task_comment(project_id, task_id, id, query={})
      perform_put("/api/1/projects/#{project_id}/tasks/#{task_id}/comments/#{id}", :query => query)
    end
    # Comment destroy
    # DELETE /api/1/projects/:project_id/comments/:id
    def delete_project_comment(project_id, id, query={})
      perform_delete("/api/1/projects/#{project_id}/comments/#{id}", :query => query)
    end
    # DELETE /api/1/projects/:project_id/conversations/:conversation_id/comments/:id
    def delete_project_conversation_comment(project_id, conversation_id, id, query={})
      perform_delete("/api/1/projects/#{project_id}/conversations/#{conversation_id}/comments/#{id}", :query => query)
    end
    # DELETE /api/1/projects/:project_id/tasks/:task_id/comments/:id
    def delete_project_task_comment(project_id, conversation_id, id, query={})
      perform_delete("/api/1/projects/#{project_id}/tasks/#{task_id}/comments/#{id}", :query => query)
    end
    # Conversations watch
    # PUT /api/1/projects/:project_id/conversations/:id/watch
    def watch_project_conversation(project_id, id, query={})
      perform_put("/api/1/projects/#{project_id}/conversations/#{id}/watch", :query => query)
    end
    # PUT /api/1/projects/:project_id/conversations/:id/unwatch
    def unwatch_project_conversation(project_id, id, query={})
      perform_put("/api/1/projects/#{project_id}/conversations/#{id}/unwatch", :query => query)
    end
    # Conversation update
    # PUT /api/1/projects/:project_id/conversations/:id
    def update_project_conversation(project_id, id, query={})
      perform_put("/api/1/projects/#{project_id}/conversations/#{id}", :query => query)
    end
    # Conversation destroy
    # DELETE /api/1/projects/:project_id/conversations/:id
    def destroy_project_conversation(project_id, id, query={})
      perform_delete("/api/1/projects/#{project_id}/conversations/#{id}", :query => query)
    end
    # Conversation show
    # GET /api/1/projects/:project_id/conversations/:id
    def project_conversation(project_id, id, query={})
      perform_get("/api/1/projects/#{project_id}/conversations/#{id}", :query => query)[:conversation]
    end
    # Conversations index
    # GET /api/1/projects/:project_id/conversations
    def project_conversations(project_id, query={})
      perform_get("/api/1/projects/#{project_id}/conversations", :query => query)[:conversations]
    end
    # Conversation create
    # POST /api/1/projects/:project_id/conversations
    def create_project_conversation(project_id, query={})
      perform_post("/api/1/projects/#{project_id}/conversations", :query => query)
    end
    # Invitation destroy
    # DELETE /api/1/invitations/:id
    def delete_invitation(id, query={})
      perform_delete("/api/1/invitations/#{id}", :query => query)
    end
    # DELETE /api/1/projects/:project_id/invitations/:id
    def delete_invitation(id, query={})
      perform_delete("/api/1/invitations/#{id}", :query => query)
    end
    # Invition accept
    # PUT /api/1/invitations/:id/accept
    def invitaiton_accept(id, query={})
      perform_put("/api/1/invitations/#{id}", :query => query)
    end
    # Invitation resend
    # PUT /api/1/projects/:project_id/invitations/:id/resend
    def project_invitation_resend(project_id, id, query={})
      perform_put("/api/1/projects/#{project_id}/invitations/#{id}/resend", :query => query)
    end
    # Invitation create
    # POST /api/1/projects/:project_id/invitations
    def create_project_invitation(project_id, query={})
      perform_post("/api/1/projects/#{project_id}/invitations", :query => query)
    end
    # Invitation indexes
    # GET /api/1/invitations/:id
    def invitations(query={})
      perform_get("/api/1/invitations", :query => query)[:invitations]
    end
    # GET /api/1/projects/:project_id/invitations
    def project_invitations(project_id, query={})
      perform_get("/api/1/projects/#{project_id}/invitations", :query => query)[:invitations]
    end
    # Invitaiton show
    # GET /api/1/invitations/:id
    def invitation(id, query={})
      perform_get("/api/1/invitations/#{id}", :query => query)[:invitation]
    end
    # GET /api/1/projects/:project_id/invitations/:id
    def project_invitation(project_id, id, query={})
      perform_get("/api/1/projects/#{project_id}/invitations/#{id}", :query => query)[:invitation]
    end
    # People index
    # GET /api/1/projects/:project_id/people
    def project_people(project_id, query={})
      perform_get("/api/1/projects/#{project_id}/people", :query => query)[:people]
    end
    # Person show
    # GET /api/1/projects/:project_id/people/:id
    def project_person(project_id, id, query={})
      perform_get("/api/1/projects/#{project_id}/people/#{id}", :query => query)[:person]
    end
    # Person update
    # PUT /api/1/projects/:project_id/people/:id
    def update_project_person(project_id, id, query={})
      perform_put("/api/1/projects/#{project_id}/people/#{id}", :query => query)
    end
    # Person destroy
    # DELETE /api/1/projects/:project_id/people/:id
    def destroy_project_person(project_id, id, query={})
      perform_delete("/api/1/projects/#{project_id}/people/#{id}", :query => query)
    end
    # Projects index
    # GET /api/1/projects
    def projects(query={})
      perform_get("/api/1/projects", :query => query)[:projects]
    end
    # Project show
    # GET /api/1/projects/:id
    def project(project_id, query={})
      perform_get("/api/1/projects/#{project_id}", :query => query)[:project]
    end
    # Project update
    # PUT /api/1/projects/:id
    def update_project(project_id, query={})
      perform_put("/api/1/projects/#{project_id}", :query => query)
    end
    # PUT /api/1/projects/:id/transfer
    def transfer_project(project_id, query={})
      perform_put("/api/1/projects/#{project_id}/transfer", :query => query)
    end
    # Project create
    # POST /api/1/projects
    def create_project(query={})
      perform_post("/api/1/projects", :query => query)
    end
    # Project destroy
    # DELETE /api/1/projects/:id
    def destroy_project(project_id, query={})
      perform_delete("/api/1/projects/#{project_id}", :query => query)
    end
    # Task_lists index
    # GET /api/1/projects/:project_id/task_lists
    def project_task_lists(project_id, query={})
      perform_get("/api/1/projects/#{project_id}/task_lists", :query => query)[:task_lists]
    end
    # Task_list show
    # GET /api/1/projects/:project_id/task_lists/:id
    def project_task_list(project_id, id, query={})
      perform_get("/api/1/projects/#{project_id}/task_lists/#{id}", :query => query)[:task_list]
    end
    # Task_list update
    # PUT /api/1/projects/:project_id/task_lists/:id
    def update_project_task_list(project_id, id, query={})
      perform_put("/api/1/projects/#{project_id}/task_lists/#{id}", :query => query)
    end
    # PUT /api/1/projects/:project_id/task_lists/:id/archive
    def archive_project_task_list(project_id, id, query={})
      perform_put("/api/1/projects/#{project_id}/task_lists/#{id}/archive", :query => query)
    end
    # PUT /api/1/projects/:project_id/task_lists/:id/unarchive
    def unarchive_project_task_list(project_id, id, query={})
      perform_put("/api/1/projects/#{project_id}/task_lists/#{id}/unarchive", :query => query)
    end
    # PUT /api/1/projects/:project_id/task_lists/reorder
    def reorder_project_task_list(project_id, query={})
      perform_put("/api/1/projects/#{project_id}/task_lists/reorder", :query => query)
    end
    # Task_list create
    # POST /api/1/projects/:project_id/task_lists
    def create_project_task_list(project_id, query={})
      perform_post("/api/1/projects/#{project_id}/task_lists", :query => query)
    end
    # Task_list destroy
    # DELETE /api/1/projects/:project_id/task_lists/:id
    def destroy_project_task_list(project_id, id, query={})
      perform_delete("/api/1/projects/#{project_id}/task_lists/#{id}", :query => query)
    end
    # Tasks indexes
    # GET /api/1/projects/:project_id/tasks
    def project_tasks(project_id, query={})
      perform_get("/api/1/projects/#{project_id}/tasks", :query => query)[:tasks]
    end
    # GET /api/1/projects/:project_id/task_lists/:task_list_id/tasks
    def project_task_list_tasks(project_id, task_list_id, query={})
      perform_get("/api/1/projects/#{project_id}/task_lists/#{task_list_id}/tasks", :query => query)[:tasks]
    end
    # GET /api/1/tasks
    def tasks(query={})
      perform_get("/api/1/tasks", :query => query)[:tasks]
    end
    # Task show
    # GET /api/1/projects/:project_id/tasks/:id
    def project_task(project_id, id, query={})
      perform_get("/api/1/projects/#{project_id}/tasks/#{id}", :query => query)[:task]
    end
    # GET /api/1/projects/:project_id/task_lists/:task_list_id/tasks/:id
    def project_task_list_task(project_id, task_list_id, id, query={})
      perform_get("/api/1/projects/#{project_id}/task_lists/#{task_list_id}/tasks/#{id}", :query => query)[:task]
    end
    # GET /api/1/tasks/:id
    def task(id, query={})
      perform_get("/api/1/tasks/#{id}", :query => query)[:task]
    end
    # Task create
    # POST /api/1/projects/:project_id/task_lists/:task_list_id/tasks
    def create_project_task_list_task(project_id, task_list_id, query={})
      perform_post("/api/1/projects/#{project_id}/task_lists/#{task_list_id}/tasks", :query => query)
    end
    # Task update
    # PUT /api/1/projects/:project_id/tasks/:id
    def update_project_task(project_id, id, query={})
      perform_put("/api/1/projects/#{project_id}/tasks/#{id}", :query => query)
    end
    # PUT /api/1/projects/:project_id/task_lists/:task_list_id/tasks/:id
    def update_project_task_list_task(project_id, task_list_id, id, query={})
      perform_put("/api/1/projects/#{project_id}/task_lists/#{task_list_id}/tasks/#{id}", :query => query)
    end
    # PUT /api/1/tasks/:id
    def update_task(id, query={})
      perform_put("/api/1/tasks/#{id}", :query => query)
    end
    # Task watch
    # PUT /api/1/projects/:project_id/tasks/:id/watch
    def watch_project_task(project_id, id, query={})
      perform_put("/api/1/projects/#{project_id}/tasks/#{id}/watch", :query => query)
    end
    # PUT /api/1/tasks/:id/watch
    def watch_task(id, query={})
      perform_put("/api/1/tasks/#{id}/watch", :query => query)
    end
    # PUT /api/1/projects/:project_id/tasks/:id/unwatch
    def unwatch_project_task(project_id, id, query={})
      perform_put("/api/1/projects/#{project_id}/tasks/#{id}/unwatch", :query => query)
    end
    # PUT /api/1/tasks/:id/unwatch
    def unwatch_task(id, query={})
      perform_put("/api/1/tasks/#{id}/unwatch", :query => query)
    end
    # Task reorder
    # PUT /api/1/projects/:project_id/tasks/reorder
    def reorder_project_tasks(id, query={})
      perform_put("/api/1/projects/#{project_id}/tasks/reorder", :query => query)
    end
    # Task destroy
    # DELETE /api/1/projects/:project_id/tasks/:id
    def destroy_project_task(project_id, id, query={})
      perform_delete("/api/1/projects/#{project_id}/tasks/#{id}", :query => query)
    end
    # DELETE /api/1/projects/:project_id/task_lists/:task_list_id/tasks/:id
    def destroy_project_task_list_task(project_id, task_list_id, id, query={})
      perform_delete("/api/1/projects/#{project_id}/task_lists/#{task_list_id}/tasks/#{id}", :query => query)
    end
    # DELETE /api/1/tasks/:id
    def destroy_task(id, query={})
      perform_delete("/api/1/tasks/#{id}", :query => query)
    end
    # Uploads index
    # GET /api/1/projects/:project_id/uploads
    def project_uploads(project_id, query={})
      perform_get("/api/1/projects/#{project_id}/uploads", :query => query)[:uploads]
    end
    # Upload show
    # GET /api/1/projects/:project_id/uploads/:id
    def project_upload(project_id, id, query={})
      perform_get("/api/1/projects/#{project_id}/uploads/#{id}", :query => query)[:upload]
    end
    # Upload create
    # POST /api/1/projects/:project_id/uploads
    def create_project_upload(project_id, query={})
      perform_post("/api/1/projects/#{project_id}/uploads", :query => query)
    end
    # Upload destroy
    # DELETE /api/1/projects/:project_id/uploads/:id
    def destroy_project_upload(project_id, id, query={})
      perform_delete("/api/1/projects/#{project_id}/uploads/#{id}", :query => query)
    end
    # Users index 
    # GET /api/1/users
    def users(query={})
      perform_get("/api/1/users", :query => query)[:users]
    end
    # User show
    # GET /api/1/users/:id
    def users(id, query={})
      perform_get("/api/1/users/#{id}", :query => query)[:user]
    end
    # Account
    # GET /api/1/account/
    def account(query={})
      perform_get("/api/1/users/#{id}", :query => query)[:user]
    end
    
    protected

    def self.mime_type(file)
      case
        when file =~ /\.jpg/  then 'image/jpg'
        when file =~ /\.gif$/ then 'image/gif'
        when file =~ /\.png$/ then 'image/png'
        else 'application/octet-stream'
      end
    end

    def mime_type(f) self.class.mime_type(f) end

    CRLF = "\r\n"

    def self.build_multipart_bodies(parts)
      boundary = Time.now.to_i.to_s(16)
      body = ""
      parts.each do |key, value|
        esc_key = CGI.escape(key.to_s)
        body << "--#{boundary}#{CRLF}"
        if value.respond_to?(:read)
          body << "Content-Disposition: form-data; name=\"#{esc_key}\"; filename=\"#{File.basename(value.path)}\"#{CRLF}"
          body << "Content-Type: #{mime_type(value.path)}#{CRLF*2}"
          body << value.read
        else
          body << "Content-Disposition: form-data; name=\"#{esc_key}\"#{CRLF*2}#{value}"
        end
        body << CRLF
      end
      body << "--#{boundary}--#{CRLF*2}"
      {
        :body => body,
        :headers => {"Content-Type" => "multipart/form-data; boundary=#{boundary}"}
      }
    end

    def build_multipart_bodies(parts) self.class.build_multipart_bodies(parts) end

    private

    def perform_get(path, options={})
      Teambox::Request.get(self, path, options)
    end

    def perform_post(path, options={})
      Teambox::Request.post(self, path, options)
    end

    def perform_put(path, options={})
      Teambox::Request.put(self, path, options)
    end

    def perform_delete(path, options={})
      Teambox::Request.delete(self, path, options)
    end

  end
end
