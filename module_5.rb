require 'bcf/flightplans'
require_relative './common_blocks'
require_relative './common_resources'

module_5 = BCF::FlightPlans::ConventionalFlightPlan.build do
  module_title "Context"
  module_number 5

  learning_outcomes <<~MD
    Learners will be able to:
      -	Describe why intention is different to impact
      -	Apply feedback sequence and practice feedback
    
    Suggested learning outcomes for further trainings/interventions
      -	Feedback in different contexts
  
  MD

  demo <<~MD
    Before BOR1, Fx1 gives feedback to Fx2 or producer using the feedback sequence. Please ensure the feedback is around something that happened in the course as that is what we want from participants.MD
  MD


  block(BCF::FlightPlans::CommonBlocks::PRE_FLIGHT)

  block(BCF::FlightPlans::CommonBlocks::GREETING)

  block(name: "Welcome", lead_by: :fx1) do
    length 2
    #TODO: Fix how to show flipchart as comments
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
      
      Go through agenda on flip mentioning these points:
      
      MD

      spoken "Last time we looked at listening with curiosity. We will do a quick review of that in just a bit. "

      spoken "Today, we are going to take listening and responding further and explore a way of giving feedback."

      spoken "Clear feedback gives the other person information about how you make sense of your experiences. It also models how the other person might share what is going on for them."
    
    end

  end

  block(name: "Any Questions?", lead_by: :fx1) do
    length 2
    section_comment "Flip 1 bottom half for comments"

    facilitator do
      spoken "And is there anything you need to tell us before we begin? For example, if you need to leave early or if you are having any problems with Zoom."
      spoken "We’ve covered some key factors affecting conversations in Modules 1-4:"
      spoken_exact <<~MD
        State
        Assumptions

        Context

        How you listen and respond
      MD
      spoken "And do you have anything you’d like to ask us about today’s topic?"

      instruction <<~MD
      Respond to any questions/insights but keep it brief.

      Handover to Fx2 for state check-in.
      
      MD
    end

    producer do
      instruction "Copy into chat when you hear the facilitator ask about questions:"

      chat <<~CHAT
        Factors that affect conversations:

        State

        Assumptions

        Context
        
        How you listen and respond
      
      CHAT
    end

  end

  block(BCF::FlightPlans::CommonBlocks::STATE_CHECKIN_TLM)

  block(name: "Fieldwork reflections", lead_by: :fx2) do
    length 4
    section_comment "Chat"

    facilitator do
      spoken "Let’s have a quick recap of the fieldwork. Please share only what you’d like to and put your answers in the chat, so we hear from everyone quickly."
      spoken_exact <<~MD
        Think of one conversation you had recently
        -	What kind of listening did you do?
        -	What impact did that have on the conversation?
      
      MD

      instruction <<~MD
        If time, invite examples from 1-2 people.
        Handover to Fx1 for considering the difference between our intention and the impact of our feedback.
      
      MD
    
    end

    producer do
      chat <<~CHAT
        Think of one conversation you had recently

        - What kind of listening did you do?
        
        - What impact did that have on the conversation?
      
      CHAT
    end

  end

  block(name: "Conversation Model", lead_by: :fx1) do
    length 9
    resources do
      flipchart(
        :flip_2,
        "to explain model",
        description: "Conversation diagram (reuse Module 4 Flip#2 if desired)",
        scribed_by: :fx1
      )
    end

    facilitator do
      spoken "Let’s bring up the conversation model we looked at last time to illustrate an important point about feedback. There is an explanation in the handbook in Section 5."
      spoken "Feedback is a way of sharing our own context, and our experiences."
      spoken "Feedback may be intended to be helpful, but we don’t know how this will impact the other person."
      spoken "For example, think about this phrase:"
      spoken "“You have so much potential”"
      spoken "What happens for you when you hear that?"

      instruction "Facilitate brief discussion on impact of statement, how it can be viewed as criticism or praise depending on context."

      spoken "What I want to highlight is that intention is different to impact "

      instruction "You can point to the LHS of the model as you say this:"

      spoken <<~MD
        When we are in conversation with someone, we can know:
        -	What we see/hear
        -	We think and feel (our state)
        -	What we say or do as a result
      
      MD

      instruction "You can point to the RHS of the model as you say this:"

      spoken "We don’t know what other people pay attention to, or what they really think and feel although their behaviour might give us clues about that. "
    
      instruction "Place blue Post-it or paper labelled ‘intention’ next to ‘I think/feel’"

      spoken "The impact on the other person, what they think or feel about what we say or do, may or may not be what we intended."
        spoken "You may think your feedback will land in green, however it could mean they go into an amber/yellow or red state depending on how they interpret it."

      instruction "Add amber/yellow and red Post-its to ‘they think/feel’"

      spoken "And it works the other way around…how many times has someone given you feedback, and you experience an amber/yellow or red state?  "

      instruction <<~MD
      Swap blue intention and red/yellow/green impact Post-its around so the intention Post-it sits with they think/feel and impact Post-its sit with I think/feel

      Handover to Fx2 for exercise on intention and impact
      
      MD
    
    end

    producer do
      instruction "Prepare BORs in 2/3s for 6 minutes if not already done"
    end

  end

  block(name: "Breakout 1", lead_by: :fx2) do
    length 8
    section_comment "(2 min briefing)"

    facilitator do
      spoken "We’re going to send you into breakout rooms for 6 minutes to explore intention and impact."
      spoken "Please share only what you feel comfortable sharing in the group when we come back into the main room."
      spoken "The exercise is going in the chat so it should travel to the breakout room with you. If you are on a mobile device, you might want to take a note of it in case you can’t see it."
    
      spoken_exact "Think of a situation where you might give your opinion or feedback to someone."
      spoken_exact "Ask each other these questions:"
      spoken_exact "What’s your intention for this conversation?"
      spoken_exact "What are you assuming about the impact of this conversation on the other person?"
      spoken_exact "What might you do to hold your assumptions lightly?"
      spoken_exact "Manage the time so everyone gets a chance to talk about their intention and assumptions around a conversation they might have."

      spoken "We will send a message into the rooms to let you know when you are halfway through the time."
      spoken "When you come back we will talk about intentions and assumptions."
      spoken "Any questions before we send you in?"
    end

    producer do
      
      instruction "Copy to chat when you hear the facilitator say this: "

      chat <<~CHAT
        Think of a situation where you might give your opinion or feedback to someone.

        Ask each other these questions:
        
        - What is your intention for this conversation?
        
        - What are you assuming about the impact of this conversation on the other person?
        
        - What might you do to hold your assumptions lightly?
        
        Manage the time so everyone gets a chance to talk about their intention and assumptions around a conversation they might have
        
      CHAT

      instruction <<~MD
        When the facilitator has finished talking tell the group you are going to send them into BORs for 6 minutes
        
        Send into BORs
        
        Broadcast halfway message 
      
      MD

      chat "Halfway, 3 minutes remaining"
    end
    
  end

  block(name: "Unpack Breakout 1", lead_by: :fx2) do
    length 6
    resources do
      flipchart(
        :flip_3,
        "Comments from up to 3 people and/or use chat",
        description: "Learnings on intention and impact",
        scribed_by: :fx2
      )
    end


    facilitator do
      spoken "Let’s find out what you discovered:"

      spoken_exact <<~MD
        What’s your intention for this conversation?
        -	What are you assuming about the impact of this conversation on the other person?
        -	What might you do to hold your assumptions lightly?
      
      MD
      
      instruction <<~MD
        Facilitate brief discussion. Suggest asking questions about context before giving people feedback if it hasn’t been mentioned.

        Handover to Fx1 for demonstration of feedback
      
      MD

    end

    producer do
      instruction "Copy to chat as you hear the facilitator mention each of these questions:"

      chat <<~CHAT
      - What is your intention for the conversation?

      - What are you assuming about the impact of this conversation on the other person?
      
      - What might you do to hold your assumptions lightly?
      
      CHAT

      instruction "Prepare BORs in different 2/3s for 8 minutes"
    end
  end

  block(name: "Demonstrate Breakout 2", lead_by: :fx1) do
    length 3

    facilitator do
      spoken "I am going to demo a way of giving feedback that helps separate intention and impact. "
      spoken "This helps the other person understand how you experienced a situation, which might be different to what they intended or expected. "
    
      instruction <<~MD
        Facilitator to demo giving feedback  with producer or co-facilitator on something that happened recently. 
        
        Make sure that the feedback is around something that happened in the course as that is what we want from participants:
      
      MD
      #TODO: Make this highlighted? Fixed true doesnt work as in Docs
      instruction <<~MD
        When [something that happened]
        
        I saw/heard ___

        I took that to mean ___

        The impact that had on me was ___

        My intention in giving you this feedback is ___
      
      MD
    end

    producer do
      instruction "The Facilitator demo the exercise with the producer or co-facilitator."
    end
  end

  block(name: "Breakout 2", lead_by: :fx1) do
    length 9
    section_comment "(1 min briefing)"

    facilitator do
      spoken "We are going to put you into breakouts again. You will have 8 minutes for this exercise"

      spoken_exact "Help each other construct some feedback for us."
      spoken_exact "One person will think about some feedback about how we have delivered the course or how you have experienced the course. It might be what went well, or what could have been better for them."
      spoken_exact "The other person(s) will ask:"
      spoken_exact "Briefly, what happened?"
      spoken_exact "What did you see or hear that tells you that?"
      spoken_exact "What did you take that to mean?"
      spoken_exact "What impact did that have on you?"
      spoken_exact "What is your intention in giving this feedback?"
      spoken_exact "Manage the time so everyone has a chance to practise the questions. Please only share what you are comfortable sharing."

      spoken "Remember, we are just practising here so it is a chance to try these questions out."
      spoken "When you return, you can give us your feedback."
      spoken "Any questions before we send you in?"
    end

    producer do
      chat <<~CHAT
      Help each other construct some feedback for us. 

      One person will think about some feedback  about how we have delivered the course or how you have experienced the course. It might be what went well, or what could have been better for them. 
      
      The other person(s) will ask:
      
      - Briefly, what happened?
      
      - What did you see or hear that tells you that?
      
      - What did you take that to mean?
      
      - What impact did that have on you?
      
      - What is your intention in giving this feedback?
      
      Manage the time so everyone has a chance to practise the questions. Please only share what you are comfortable sharing.
      
      CHAT

      instruction <<~MD
      When the facilitator has finished talking tell the group you are going to send them into BORs for 8 minutes
      
      Send into BORs
      
      Broadcast halfway message 
      
      MD

      chat "Halfway, 4 minutes remaining"
    end
  end

  block(name: "Unpack Breakout 2", lead_by: :fx1) do
    length 7
    resources do
      flipchart(
        :flip_4,
        "Comments from up to 3 people and/or use chat",
        description: "Course feedback",
        scribed_by: :fx2
      )
    end
  

    facilitator do
      
      spoken "Let’s get some feedback from you on how we’ve delivered the course or how you have experienced the course."
      spoken "The feedback sequence is going in the chat to help you."
      spoken "Who would like to share their feedback?"

      instruction <<~MD
      Ask 2-3 people to give feedback. Suggest people can also put their feedback in the chat. 
      
      Help people  to separate the feedback into the four elements (I saw/heard, I took that to mean etc.). 
      
      Ask what they saw or heard, what they took that to mean and what the impact on them was. Ask them what the intention of their feedback is.
      
      Handover to Fx2 for reflections and close.
      
      MD
    end

    producer do
      chat <<~CHAT  
        Feedback sequence:

        When ___
        
        I saw/heard ___
        
        I took that to mean___
        
        The impact on me was ___
        
        My intention is in giving this feedback is to ___
      
      CHAT
    end
  end

  block(name: "Reflect on learning in this session", lead_by: :fx2) do
    length 6
    section_comment "Gather comments in chat and pick out some examples"

    facilitator do
      spoken "We are at the end of this module and the standard Better Conversations course. We’d like you to reflect on what you have learned. Here are some questions to guide your thinking."
      spoken "Please put in the chat:"
      spoken_exact "What do you know now about Better Conversations?"
      spoken_exact "What difference does that make?"
      spoken_exact "What’s one thing you might do differently now you know this?"
      spoken "There is space in the Course Handbook to capture any more thoughts you might have from today."
    end

    producer do
      chat <<~CHAT
        What do you know now about Better Conversations?

        What difference does that make?
          
        What’s one thing you might do differently now you know this?
        
      CHAT
    end
    
  end


  block(name: "Closing", lead_by: :fx2) do
    length 1

    facilitator do
      spoken "There’s no fieldwork for this module, however you can of course continue to apply the fieldwork from the first four modules to help you embed the skills we have covered."
      spoken "We have an optional sixth module coming up which will consolidate Modules 1-5 and what you would like to have happen next."
      spoken "If you have any further questions or anything you’d like to share, we will stay on the Zoom call for a few minutes after the session finished."
      spoken "We will send out a short survey after the course to gather any more thoughts you have."
      spoken "And if you’d like to write us a testimonial or be interviewed on video for it, that will help us spread Better Conversations further."
      
      instruction "Handover to Sponsor"
    end

    producer do
      instruction "If leaving the session early, make facilitator a host first."
    end
    
  end

  block(BCF::FlightPlans::CommonBlocks::SPONSOR_CLOSE)
  block(BCF::FlightPlans::CommonBlocks::SPONSOR_DEBRIEF)



end