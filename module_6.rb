require 'bcf/flightplans'
require_relative './common_blocks'
require_relative './common_resources'

MODULE_6 = BCF::FlightPlans::ConventionalFlightPlan.build do
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

  instruction_starts

  block(name: "Welcome", lead_by: :fx1) do
    length 4
    resources do
      flipchart(
        :flip_1,
        comment: "",
        description: "Course outline and agenda (pre-prepared)",
        scribed_by: :fx1
      )
    end

    facilitator do
      instruction <<~MD
        Welcome people and introduce facilitator(s), producer and any observers and briefly explain their roles.

        Point out this where this module is on the course overview on the flip
      MD

      spoken "We are on Module 6, where we consider the personal impact of the course and what you would like to have happen next."
      spoken "If you are delivering the course to your own audience, you'll need to customise this one."
      spoken "We also wanted to create another way for people from the Better Conversations Community to connect and reconnect."
      spoken "You are welcome to come to any of the sessions again and observe the delivery team, and perhaps practice delivery with us, if that’s helpful."

      instruction "Go through agenda on flip"
    end

  end

  block(BCF::FlightPlans::CommonBlocks::ANY_QUESTIONS)

  block(BCF::FlightPlans::CommonBlocks::STATE_CHECKIN_TLM)

  block(name: "Recap of the Course", lead_by: :fx2) do
    length 4
    section_comment "Gather comments in chat and pick out some examples"

    facilitator do
      spoken "Let’s do a quick recap of Modules 1-5."
      spoken "We explored State, Assumptions, Context, Listening with Curiosity and Intentional Conversations."
      spoken "Please share only what you’d like to and put your answers in the chat, so we hear from everyone quickly."
      spoken_exact "Thinking about what you explored on these modules…"
      spoken_exact "What surprised you?"
      spoken "If you’ve delivered the course recently, you can share observations from those experiences too."

      instruction "If time, invite examples from 1-2 people."

      handover "for BOR on personal impact"
    end

    producer do
      chat <<~CHAT
        Thinking about what you explored on these modules…

        What surprised you?
      CHAT
      
      instruction "Prepare BORs in 2/3s for 8 minutes if not already done."
    end

  end

  block(name: "Breakout 1", lead_by: :fx1) do
    length 10
    section_comment "(2 min briefing)"

    resources do
      breakout_room(:bor_1, default_duration: 8, halfway_message: true)
    end

    facilitator do
      spoken "We’re going to send you into breakout rooms for 8 minutes to explore the impact the course has had on you personally."
      spoken "There are some questions going into the chat that will help you discuss that impact. You don’t have to cover every question."
      spoken "It should travel to the breakout room with you. If you are on a mobile device, you might want to take a note of it in case you can’t see it."
      spoken_exact <<~MD
        Thinking of your personal experience of the course, and the conversations you have had recently:

        - What do you know now about having Better Conversations that you didn’t know before?
        - What do you do differently now?
        - Knowing this, what difference does this make to you?
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

      instruction "When the facilitator has finished talking tell the group you are going to send them into BORs for 8 minutes"
      send_into_bor :bor_1
    end
  end

  block(name: "Unpack Breakout 1", lead_by: :fx1) do
    length 6

    resources do
      flipchart(
        :flip_2,
        comment: "Summarise responses on flip, using people's words",
        description: "Personal impact of course",
        scribed_by: :fx2
      )
    end

    facilitator do
      spoken "Let’s find out what you discovered:"
      spoken_exact "What do you know now about the personal impact of Better Conversations?"
      spoken_exact "Extend if appropriate:"
      spoken_exact "Knowing that, what difference does that make, to you?"

      instruction "Facilitate brief discussion."

      handover "for discussion of Foundation model"
    end

    producer do
      instruction "Copy to chat when you hear the facilitator this:"
      chat <<~CHAT
        - What do you know now about the personal impact of Better Conversations?
        - Knowing that, what difference does that make, to you?
      CHAT

      instruction "Prepare BORs in 2/3s for 8 minutes"
    end
  end

  block(name: "Foundation Model", lead_by: :sponsor) do
    length 8

    resources do
      flipchart(
        :flip_3,
        comment: "Use flip to explain model",
        description: "Foundation Model (pre-prepared)",
        scribed_by: :sponsor
      )
    end

    facilitator do
      spoken "Thank you for giving up your time over the last few weeks. And thank you to those of you coming back to add your voice to the discussion."
      spoken "You’ll need to customise this section if you are delivering the course for your own audience. You could introduce your other offerings, or link back to project goals, organisational strategy etc."
      
      spoken "As an example, we'll share a little more about our strategy and approach."

      instruction "Go through the Foundation model on flip"
      spoken "There's three main components to this: the Foundation, the Community and our Partners."

      instruction "Point to the Foundation."
      spoken "We believe in the power of conversation to change the world for the better. And we also know that needs to start with us. So we've created the non-profit Foundation to support the work we do."
    
      spoken "We also know that learning these skills needs to be more accessible. We are inspired by the open source movement and the way it has revolutionised the software industry."
      spoken "We've adopted that approach. That's why we run these Experience Courses and make the course materials freely available."

      instruction "Point to Partners"
      
      spoken "We are looking for like-minded people to advocate for better conversations."
      spoken "You can use the course materials freely, under a Creative Commons licence. You can also modify them to suit your audience. And take as much or as little from them as you need."
      spoken "You can come back and observe any session, where you join our team setup and debrief before and after the session and talk to us about how we deliver the course."
      spoken "You can also practice delivering with us on a voluntary basis. It’s a great way to get some experience before you deliver your own course."
      spoken "You are free to deliver this into your own organisation or to deliver the course on a commerical basis (we don't charge you for that)."

      instruction "Point to Community"
      spoken "We are growing a network of people who want to make a difference in their communities, teams and organisations. It's a lovely tribe."
      spoken "The community is open to everyone who's attended these sessions."
      spoken "It's a place to get help, support and advice. And to meet other people who are interested in having better conversations."
      spoken "If you've enjoyed this experience and just want to hang out with us and support our efforts, we'd love to have you there."

      spoken "Any questions on this before we move on?"

      handover "for BOR on next steps"
    end

  end

  block(name: "Breakout 2", lead_by: :fx2) do
    length 9
    section_comment "(1 min briefing)"

    resources do
      breakout_room(:bor_2, default_duration: 8, halfway_message: true)
    end

    facilitator do
      spoken "We are going to put you into breakouts again. You will have 8 minutes to discuss these suggested questions."

      spoken_exact <<~MD
        Thinking about using and/or delivering Better Conversations:

        - What was the impact on you when you learned more about our intentions for Better Conversations?
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

        - What was the impact on you when you learned more about our intentions for Better Conversations?
        - What would you like to do now?
        - What support do you need for that to happen?

        Manage the time so everyone has a chance to reflect on the questions. Please only share what you are comfortable sharing.
      CHAT

      instruction <<~MD
        When the facilitator has finished giving the instructions/answering questions. tell the group you are going to send them into BORs for 8 minutes
      MD

      send_into_bor :bor_2
    end

  end

  block(name: "Unpack Breakout 2", lead_by: :fx2) do
    length 7

    resources do
      flipchart(
        :flip_4,
        comment: "Summarise responses on flip, using people's words",
        description: "What would you would like to do now?",
        scribed_by: :fx1
      )
    end
    facilitator do
      spoken "Let’s get some thoughts from you on what might happen next for you."
      spoken_exact "What would you like to do now?"
      spoken_exact "What support do you need for that to happen?"

      instruction "Facilitate brief discussion suggesting people can also put their answers in the chat. Aim for 2-3 examples, with one from the chat."

      handover "for reflections and close"
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
      spoken "We are near the end of this module and our extended course. We’d like to thank you all, and our Faculty for enabling these conversations – we hope you’ll take something from the course and share it with your family, friends, teams or organisations."
      spoken "We hope that you understand a little more about the Foundation and what we do now. We are all volunteers and hopefully we can achieve more working together."

      spoken "These Experience Courses are invite-only and the invites can come from you as well!"
      spoken "There's a link going into the chat to your own referral code to invite friends and family to attend these Experience Courses. Use it as many times as you like. It would really help us fill more courses for people who want to practice delivery."

      spoken "We’d love to continue the conversations in the community as well. You can ask for support and look for extra resources posted there too. There’s a link going in the chat for that as well."

      spoken "Are there any questions before we finish?"

      instruction "Facilitate brief discussion if time allows suggesting people can also put their answers in the chat."
    end

    producer do
      instruction "Copy to chat when you hear facilitator say this:"

      chat <<~CHAT
        https://bettercourses.org/participant/referral
      CHAT

      instruction "Copy to chat when facilitator mentions this:"

      chat <<~CHAT
        https://community.betterconversations.foundation/
      CHAT
    end

  end

  block(name: "Close", lead_by: :fx1) do
    length 1

    facilitator do
      spoken "There’s no fieldwork for this module."
      spoken "If you are interested in a certificate of attendance and badge you can display on LinkedIn, please email us or let us know in the chat."
      spoken "We'd appreciate any testimonials you could give us. Again, please let us know if you can do that."
      spoken "If you have any further questions or anything you’d like to share today, we will stay on the Zoom call for a few minutes after the session has finished"

      handover
    end

    producer do
      chat "Please email: hello@betterconversations.foundation for a certificate of attendance and badge, and/or if you'd like to give us testimonial."

      instruction "If leaving the session early, make facilitator a host first"
    end
  end

  instruction_ends

  block(BCF::FlightPlans::CommonBlocks::SPONSOR_CLOSE)
  block(BCF::FlightPlans::CommonBlocks::SPONSOR_DEBRIEF)

end
