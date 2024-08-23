module BCF
  module FlightPlans
    class ConventionalFlightPlan < BCF::FlightPlans::FlightPlan
      def initialize
        super
        @total_length = 90 # TODO this should be 120?
        @initial_time = -30
        @organisation = "Better Conversations"
      end
    end

    module CommonBlocks
      # Call this with `block BCF::FlightPlans::CommonBlocks::preflight_block(25)`
      def self.pre_flight(length_value)
        Block.build do
          length(length_value)
          name "Pre-Flight checklist"

          producer do
            instruction "Sponsor and producer run through the pre-flight checklist (above)"
          end
        end
      end

      PRE_FLIGHT = Block.build do
        length 25
        name "Pre-Flight checklist"

        producer do
          instruction "Sponsor and producer run through the pre-flight checklist (above)"
        end
      end

      # TODO = Allow more than one leader
      GREETING = Block.build do
        length 5
        name "Greeting"
        default_leader :fx1 and :fx2

        facilitator do
          instruction "Greet people as they join - this is a chance to check their audio/video is working"
        end

        producer do
          instruction "Setup template Breakout Room for first breakout"
        end
      end

      ANY_QUESTIONS = Block.build do
        length 2
        default_leader :fx2

        facilitator do
          spoken "And is there anything you need to tell us before we begin? For example, if you need to leave early or if you are having any problems with Zoom."
          spoken "And do you have anything you’d like to ask us about today’s topic?"

          instruction "Respond to any questions/insights but keep it brief."
        end
      end

      STATE_CHECKIN = Block.build do
        length 2
        default_leader :fx2

        facilitator do
          spoken "Now, let’s check-in with your state using the Traffic Light Model"
          spoken "Please put in the chat if you are green, amber/yellow or red"
          spoken <<~MD
              Green – you’re good to go!
              Amber/Yellow – you need to proceed with caution
              Red – you need to stop, break
          MD

          instruction "Accept whatever states are put in chat. Avoid saying that green state is best. If people are in red then ask them to take the time they need, switch their camera off and mute, and join when they are ready."
        end

        producer do
          chat <<~CHAT
                State check-in:

                - Green – you’re good to go!
                - Amber/Yellow – you need to proceed with caution
                - Red – you need to stop, break
          CHAT

          instruction "Take note of states to help decide BOR participants"
        end
      end


      SPONSOR_CLOSE = Block.build do
        length 16
        name "Sponsor Close"
        default_leader :sponsor

        facilitator do
          instruction "Thank the facilitators and producer"
          instruction "Mention to attendees that they are here to learn to deliver the course, as well as experience it as an attendee"
          instruction "Let attendees know that the session is finished and thank them."
          instruction "Say they are welcome to stay for 15 minutes or so if they have any questions for the team or any insights they’d like to share. After that the delivery team will debrief."
          instruction "Sponsor to facilitate discussion with attendees"
        end
      end

      SPONSOR_DEBRIEF = Block.build do
        length 15
        name "Debrief"
        default_leader :sponsor

        facilitator do
          instruction "Sponsor to facilitate debrief with delivery team on how session has gone and note any further observations, learnings etc."
        end
      end

      class Fieldwork < Block
        def self.json_create(hash)
          # TODO: How do we handle these convenience classes? Maybe a tag on the JSON?
          Block.json_create(hash)
        end

        # @param [Array<String>] points Points to be covered in the fieldwork
        def initialize(points, id:, description:, length:)
          super()
          points_body = points.map { |point| "- #{point}" }.join("\n")

          BCF::FlightPlans::Block::DSL.new(self) do
            name "Fieldwork"
            length length

            resources do
              fieldwork(id, description)
            end

            facilitator do
              spoken "We will send out the fieldwork by email. The suggested fieldwork for this module is to..."
              spoken(points_body, fixed: true)
            end

            producer do
              chat "Fieldwork:\n #{points_body}"
            end
          end
        end
      end
    end
  end
end
