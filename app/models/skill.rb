class Skill < ActiveRecord::Base

    def self.render_all
        skills = Skill.order(:order)
        skills.map do |skill|
            {
                id: skill.id,
                name: skill.name,
                image: skill.image
            }
        end
    end

end