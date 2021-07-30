class Application
    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)
  
        if req.path.match(/projects/) && req.get?
            projects = Project.render_all
            return [200, { 'Content-Type' => 'application/json' }, [{projects: projects, message: 'response success' }.to_json]]
        end
    end
end