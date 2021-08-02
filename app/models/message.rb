class Message < ActiveRecord::Base

    def self.render_all
        Message.all.map do |message|
            {
                id: message.id,
                name: message.name,
                email: message.email,
                text: message.text
            }
        end
    end

end