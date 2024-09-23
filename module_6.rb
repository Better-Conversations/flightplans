require 'bcf/flightplans'
require_relative './common_blocks'
require_relative './common_resources'

module_6 = BCF::FlightPlans::ConventionalFlightPlan.build do
  module_title "Applications"
  module_number 6

  learning_outcomes <<~MD
  Learners will be able to:
    -	Describe the personal impact of the Better Conversations course
    -	Explain what they would like to have happen now

    Suggested learning outcomes for further trainings/interventions
    -	Follow up with individual meetings on next steps

  MD

  block(BCF::FlightPlans::CommonBlocks::PRE_FLIGHT)

  block(BCF::FlightPlans::CommonBlocks::GREETING)

  block(name: "Welcome", lead_by: :fx1) do
    length 4
    resources do
      flipchart(
        :flip_1,
        "for agenda",
        description: "Agenda (top half) and space for any questions or reflections",
        scribed_by: :fx1
      )
    end

    facilitator do
      instruction <<~MD
        Welcome people and introduce facilitator(s), producer and any observers and briefly explain their roles.

        Point out this where this module is on the course overview on the flip


      MD

      spoken "We are on Module 6, which is an optional module on our Experience course."
      spoken "We wanted to create another way for people from the Better Conversations Community to connect and reconnect."
      spoken "You are also welcome to come to any of the sessions again and observe the delivery team, and perhaps practice delivery with us, if that’s helpful."
      spoken "Today, we are going to consider what we’ve covered in Modules 1-5, the impact that has and discuss what might support you in taking Better Conversations out into the world."

      instruction "Go through agenda on flip"
    end

  end

  block(BCF::FlightPlans::CommonBlocks::ANY_QUESTIONS)

  block(BCF::FlightPlans::CommonBlocks::STATE_CHECKIN_TLM)

  block(name: "Recap of the Coursee", lead_by: :fx2) do
    length 4
    section_comment "Chat"

    facilitator do
      spoken "Let’s do a quick recap of Modules 1-5."
      spoken "We explored State, Assumptions, Context, Listening with Curiosity and Feedback."
      spoken "Please share only what you’d like to and put your answers in the chat, so we hear from everyone quickly."
      spoken_exact "Thinking about what you explored on these modules…"
      spoken_exact "What surprised you?"
      spoken "If you’ve delivered the course recently, you can share observations from those experiences too."

      instruction <<~MD
      If time, invite examples from 1-2 people.

      Handover to Fx1 for BOR on personal impact

      MD
    end

    producer do
      chat <<~CHAT
        Thinking about what you explored on these modules…

        What surprised you?

      CHAT
    end


  end

  block(name: "Breakout 1", lead_by: :fx1) do
    length 10

    resources do
      breakout_room(:bor_1, default_duration: 8)
    end

    facilitator do
      spoken "We’re going to send you into breakout rooms for 8 minutes to explore the impact the course has had on you personally."
      spoken "There are some questions going into the chat that will help you discuss that impact. You don’t have to cover every question."
      spoken "It should travel to the breakout room with you. If you are on a mobile device, you might want to take a note of it in case you can’t see it."
      spoken_exact <<~MD

      Thinking of your personal experience of the course, and the conversations you have had recently:

       -What do you know now about having Better Conversations that you didn’t know before?

        -What do you do differently now?

        -Knowing this, what difference does this make to you?
        MD

      spoken_exact "Manage the time so everyone has a chance to contribute. You don’t have to cover every question."
      spoken_exact "Please only share what you are comfortable sharing."
      spoken "We will send a message into the rooms to let you know when you are halfway through the time."
      spoken "When you come back, we will talk about the personal impact of the course and whether that has made a difference."
      spoken "Any questions before we send you in?"
    end

    producer do
      instruction "Copy to chat when you hear the facilitator say this: "

      chat <<~CHAT
      Thinking of your personal experience of the course, and the conversations you have had recently:

      - What do you know now about having Better Conversations that you didn’t know before?

      - What do you do differently now?

      - Knowing this, what difference does this make to you?

      Manage the time so everyone has a chance to contribute. You don’t have to cover every question.
      Please only share what you are comfortable sharing.

      CHAT

      instruction <<~MD

      When the facilitator has finished talking tell the group you are going to send them into BORs for 8 minutes

      Send into BORs

      Broadcast halfway message

      MD

      broadcast "Halfway, 4 minutes remaining"
    end
  end

  block(name: "Unpack Breakout 1", lead_by: :fx1) do
    length 6

    resources do
      flipchart(
        :flip_2,
        "Comments from up to 3 people and/or use chat",
        description: "Debrief from BOR 1 – Personal impact of course",
        scribed_by: :fx2
      )
    end

    facilitator do
      spoken "Let’s find out what you discovered:"
      spoken_exact "What do you know now about the personal impact of Better Conversations?"
      spoken_exact "Extend if appropriate:"
      spoken_exact "Knowing that, what difference does that make, to you?"

      instruction "Facilitate brief discussion."

      instruction "Handover to Sponsor for discussion of Foundation model"
    end

    producer do
      instruction "Copy to chat as you hear the facilitator mention each of these questions:"
      chat <<~CHAT
        - What do you know now about the personal impact of Better Conversations?

        - Knowing that, what difference does that make, to you?

      CHAT

      instruction "Prepare BORs in 2/3s for 6 minutes"

    end


  end

  block(name: "Foundation Model", lead_by: :sponsor) do
    length 5

    resources do
      flipchart(
        :flip_3,
        "to explain model",
        description: "Foundation Model",
        scribed_by: :sponsor
      )
    end

    facilitator do
      spoken "Thank you for giving up your time over the last few weeks. And thank you to those of you coming back to add your voice to the discussion."
      spoken "This is the bit you’ll customise for your own audience. You could introduce your other offerings, or link back to project goals, organisational strategy etc."
      spoken "This course is designed to spread. We are making the materials available under Creative Commons so it can spread."
      spoken "(Draw diagram) 8 billion people in the world…"
      spoken "We want people to take this out into their communities, teams, organisations."
      spoken "You can take as much or as little as you want - some people just take the traffic light module, some people give the 5 modules as we do, some people stretch sessions to 90 minutes."
      spoken "We’ve set up the Foundation to support you."
      spoken "There are ways of learning to give this course. You can come back and observe. Observers get to turn up in our preparation time and participate in the post-course debrief."
      spoken "You can also talk with us about doing one or more sessions as Fx1 or Fx2 for us on a voluntary basis. It’s a great way to get some experience before you do it on your own."
      spoken "We are also trying to create a mutually supportive community. The world can feel a big place, and it can be a lonely existence whether you are freelancing or trying to change an organisation from within. So please use the community to get the help you might need and to support other people."
      spoken "I’m going to handover to Fx2 to take you through to the next breakout."
      instruction "Handover to Fx2 for BOR on what people would like to have happen now"
    end

  end

  block(name: "Unpack impact of Foundation model", lead_by: :fx2) do
    length 5

    facilitator do
      spoken_exact "What was the impact on you, seeing and hearing that?"

      instruction "Facilitate brief discussion suggesting people can also put their answers in the chat. Aim for 2-3 examples, with one from the chat."
    end

    producer do
      chat "What was the impact on you, seeing and hearing that?"
    end
  end

  block(name: "Breakout 2", lead_by: :fx2) do
    length 7
    section_comment "(1 min briefing)"

    resources do
      breakout_room(:bor_1, default_duration: 6)
    end

    facilitator do
      spoken "We are going to put you into breakouts again. You will have 6 minutes for this exercise"


      spoken_exact <<~MD
      Thinking about using and/or delivering Better Conversations:

        - What would you like to do now?

        - What support do you need for that to happen?
      MD

      spoken_exact "Manage the time so everyone has a chance to reflect on the questions. Please only share what you are comfortable sharing."
      spoken "When you return, we will discuss what you found out."
      spoken "Any questions before we send you in?"

    end

    producer do
      chat <<~CHAT
      Thinking about using and/or delivering Better Conversations:

      - What would you like to do now?

      - What support do you need for that to happen?

      Manage the time so everyone has a chance to reflect on the questions. Please only share what you are comfortable sharing.

      CHAT

      instruction <<~MD
      When the facilitator has finished giving the instructions/answering questions. tell the group you are going to send them into BORs for 6 minutes

      Send into BORs

      Broadcast halfway message

      MD

      broadcast "Halfway, 3 minutes remaining"

    end

  end

  block(name: "Unpack Breakout 2", lead_by: :fx2) do
    length 7

    resources do
      flipchart(
        :flip_4,
        "Comments from up to 3 people and/or use chat",
        description: "Debrief from BOR 2 – What would people like to have happen now",
        scribed_by: :fx1
      )
    end
    facilitator do
      spoken "Let’s get some thoughts from you on what might happen next for you."
      spoken_exact "What would you like to do now?"
      spoken_exact "What support do you need for that to happen?"

      instruction <<~MD
      Facilitate brief discussion suggesting people can also put their answers in the chat. Aim for 2-3 examples, with one from the chat.

      Handover to Fx1 for reflections and close.


        MD
    end

    producer do
      chat <<~CHAT
        - What would you like to do now?

        - What support do you need for that to happen?

      CHAT
    end

  end

  block(name: "Reflect on learning in this session", lead_by: :fx1) do
    length 6
    section_comment "Gather comments in chat and pick out some examples"

    facilitator do
      spoken "We are near the end of this module and our extended course. We’d like to thank you all, and our Faculty for enabling these conversations – we hope you’ll take something from the course and share it with your family, friends, teams or organisations. Our aim is to spread these skills."
      spoken "We’ve set up the Foundation to support that – and we hope that you understand a little more about it now."
      spoken "These Experience Courses are invite-only, partly so there’s no risk of us competing with people delivering the course commercially, but mainly because they are intended for people who will join our community to take this forward."
      spoken "Those invites can come from you as well!"
      spoken_exact "So, we’d like to know: How can we find more people like you?"

      instruction "Facilitate brief discussion if time allows suggesting people can also put their answers in the chat."
    end

    producer do
      chat "How can we find more people like you?"
    end

  end

  block(name: "Close", lead_by: :fx1) do
    length 1

    facilitator do
      spoken "There’s no fieldwork for this module. We’d love to continue the conversations in the community though – there’s a link going in the chat for that."
      spoken "If you have any further questions or anything you’d like to share today, we will stay on the Zoom call for a few minutes after the session has finished"

      instruction "Handover to Sponsor"
    end

    producer do
      chat "https://community.betterconversations.foundation/"

      instruction "If leaving the session early, make facilitator a host first"
    end
  end

  block(BCF::FlightPlans::CommonBlocks::SPONSOR_CLOSE)
  block(BCF::FlightPlans::CommonBlocks::SPONSOR_DEBRIEF)

end
