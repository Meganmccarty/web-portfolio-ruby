class Application
    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)

        if req.path.match(/skills/) && req.get?
            skills = Skill.render_all

            return [
                200,
                { 'Content-Type' => 'application/json' },
                [{ skills: skills, message: 'response successful'}.to_json]
            ]
  
        elsif req.path.match(/projects/) && req.get?
            projects = Project.render_all
            
            return [
                200,
                { 'Content-Type' => 'application/json' },
                [{ projects: projects, message: 'response successful' }.to_json]
            ]
        
        elsif req.path.match(/projects/) && req.patch?
            project = Project.find_by_path(req.path)

            if project
                data = JSON.parse(req.body.read)

                if project.update(data)
                    return [
                        200,
                        { 'Content-Type' => 'application/json' },
                        [{ project: {
                            id: project.id,
                            name: project.name,
                            text: project.text,
                            image: project.image,
                            url: project.url,
                            likes: project.likes,
                            tags: project.tags
                        }, message: 'patch successful' }.to_json]
                    ]
                    
                else
                    return [
                        422,
                        { 'Content-Type' => 'application/json' },
                        [{message: 'invalid data'}.to]
                    ]
                end

            else
                return [
                    404,
                    { 'Content-Type' => 'application/json' },
                    [{message: "project not found"}.to_json]
                ]
            end
        end
    end
end