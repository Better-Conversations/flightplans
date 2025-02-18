require 'bcf/flightplans'
require_relative './common_blocks'
require_relative './common_resources'

MODULE_4 = BCF::FlightPlans::ConventionalFlightPlan.build do
  module_title "Listening with Curiosity"
  module_number 4

  learning_outcomes <<~MD
    Learners will be able to:
      -	Demonstrate listening to understand
      - Demonstrate use of questions to enquire and extend understanding of the other person's context

    Suggested learning outcomes for further trainings/interventions
      - Apply Clean Language Questions to defining a challenge at work or in your community
    
  MD

  demo <<~MD
    Before BOR2, Fx1 leads demo with Fx2 or producer.
  MD

  block(BCF::FlightPlans::CommonBlocks::PRE_FLIGHT)

  block(BCF::FlightPlans::CommonBlocks::GREETING)

  instruction_starts

  block(name: "Welcome", lead_by: :fx1) do
    length 2

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

      spoken "Last time we looked at how understanding context can help us have Better Conversations. We will do a quick review of that in just a bit. "

      spoken "Today, we are going to explore listening and  introduce you to some simple and useful questions that will allow you to understand someone’s context and hold your assumptions lightly."

      instruction "Go through agenda on flip"

      spoken "Listening well and asking these types of questions influence the other person’s experience of the conversation."

    end

  end

  block(BCF::FlightPlans::CommonBlocks::ANY_QUESTIONS)

  block(BCF::FlightPlans::CommonBlocks::STATE_CHECKIN_TLM)

  # TODO: Add a fieldwork common block?
  block(name: "Fieldwork", lead_by: :fx2) do
    length 4
    section_comment "Gather comments in chat and pick out some examples"

    facilitator do
      spoken "Let’s have a quick recap of the fieldwork. Please share only what you’d like to and put your answers in the chat, so we hear from everyone quickly."

      spoken_exact "Think of one conversation you had recently"
      spoken_exact "How much did you know about the other person’s context?"
      spoken_exact "What impact did that have on your conversation?"

      instruction "If time, invite examples from people"
      handover "for the conversation model"
    end

    producer do
      chat <<~CHAT
        Think of one conversation you had recently

        - How much did you know about the other person’s context?
        - What impact did that have on your conversation?
      CHAT
    end

  end

  block(name: "Conversation Model", lead_by: :fx1) do
    length 5

    resources do
      flipchart(
        :flip_2,
        comment: "Use flip to explain the model",
        description: "Conversation diagram (as on handbook)",
        scribed_by: :fx1
      )
    end

    facilitator do
      spoken "There is an explanation in the handbook in Section 4 to help you remember the diagram."
      spoken "We are extending the context model to include the other person. We’ve drawn the diagram to show information flowing in a loop between the two people. It’s a simplification of what’s actually happening – think of it as a snapshot in time."
      spoken "And, each person sees/hears, thinks/feels and says/does – they are sensing the situation and their reaction to that and responding to each other and the surroundings."
      spoken "In a conversation each person brings their own context, makes meaning, makes assumptions and acts from that context."
      spoken "This means we can make assumptions based on our own context, and forget the other person has a different context. So we might judge other people based on our context without realising we are doing that."
      spoken "In this course we are asking you to be aware of what you are influencing and notice what might be happening for the other person (holding your assumptions lightly, of course!)."
      spoken "We think of this as creating a container for a better conversation. You might have a different metaphor for it."

      spoken "We are going to do a couple of exercises now."

      instruction "Point to the model where it says 'I see/hear' and 'they say/do' as you say this:"

      spoken "The first one helps you pay attention to what you see and hear them say and do."

      instruction "Point to the model where it says 'I say/do' and 'their context' as you say this:"
      spoken "And the second exercise focuses on what you can be saying to find out more about their context."

      handover "for the breakout exercise on listening to understand"
    end

    producer do
      instruction <<~MD
        Prepare BORs in 2/3s for 6 minutes if not already done.

        Note that it is not recommended that this BOR timing is increased (unless there is a group of 3) as it is a listening only exercise.
      MD
    end
  end

  block(name: "Breakout 1", lead_by: :fx2) do
    length 8
    section_comment "(2 min briefing)"

    resources do
      breakout_room(:bor_1, default_duration: 6, halfway_message: true)
    end

    facilitator do
      spoken "For this first breakout exercise, you will have 6 minutes to practise listening to understand what the other person is saying and doing."
      spoken "The exercise is going in the chat so it should travel to the breakout room with you. If you are on a mobile device, you might want to take a note of it in case you can’t see it."
      spoken "Please share only what you feel comfortable sharing in the group when we come back into the main room."
      spoken "Whilst you are listening, we would like to you to _avoid judging or interrupting the other person_."
      spoken "Just to be clear, please do acknowledge each other with a nod or smile or “mmm”. However, don’t comment or ask any questions if you are listening."

      spoken_exact "Decide who is going to talk first. That person will talk about something that interests them (like a hobby or a pet), something that happened recently or what they might be doing after this session."
      spoken_exact "The other person or people will listen and pay close attention to what is said and done. Accept this without judgement or interruption."
      spoken_exact "Try noticing how the speaker is communicating through words, tone, and gestures."
      spoken_exact "Manage the time so everyone gets a chance to listen and be listened to."

      spoken "We will send a message into the rooms to let you know when you are halfway through the time."
      spoken "When you come back we will talk about what it’s like when you are talking to people who are listening well and what it’s like to be listening well."
      spoken "Any questions before we send you in?"
    end

    producer do
      instruction "Copy this to chat when you hear the facilitator introduce this:"

      chat <<~CHAT
        - Decide who is going to talk first. That person will talk about something that interests them (like a hobby or a pet), something that happened recently or what they might be doing after this session.
        - The other person or people will listen and pay close attention to what is said and done. Accept this without judgement or interruption. 
        - Try noticing how the speaker is communicating through words, tone, and gestures.
        - Manage the time so everyone gets a chance to listen and be listened to.
      CHAT

      instruction "When the facilitator has finished talking, tell the group you are going to send them into BORs for 6 minutes"
      send_into_bor :bor_1
    end
  end

  block(name: "Unpack Breakout 1 ", lead_by: :fx2) do
    length 7

    resources do
      flipchart(
        :flip_3,
        comment: "Summarise responses on flip, using people's words",
        description: "Learnings on listening without interruption",
        scribed_by: :fx1
      )

    end

    facilitator do
      spoken "Let’s find out what you experienced just now."

      spoken_exact "What did  you notice about your state when you were talking about your topic?"
      spoken_exact "And what did you notice about your state when you were listening to understand what the other person was saying and doing?"

      instruction "Facilitate brief discussion suggesting people can also put their answers in the chat. Aim for 2-3 examples, with one from the chat."

      handover "for demonstrating listening and responding exercise"
    end

    producer do
      instruction "Copy to chat as you hear the facilitator mention each of these questions:"

      chat <<~CHAT
        What did  you notice about your state when you were talking about your topic?

        And what did you notice about your state when you were listening to understand what the other person was saying and doing?
      CHAT

      instruction "Prepare BORs in same 2/3s for 8 minutes"
    end

  end

  block(name: "Demonstrate Breakout 2", lead_by: :fx1) do
    length 3

    facilitator do
      spoken "You’ve practised paying attention to what the other person is saying or doing without judging or interrupting them. Listening to understand."
      spoken "Now you are going to use questions to respond and extend your understanding of the other person’s context."
      spoken "There are some questions going into the chat. These questions are constructed to remove assumptions and biases in the way you ask them."
      spoken "They can quickly uncover someone’s thinking. We advise you don’t use more than two of these questions at a time to avoid the other person feeling like they are being interrogated!"

      spoken_exact <<~MD
        We have seen the first two questions before in Module 2, where we used them to check our assumptions. These are: 
        - What kind of ___ is that? 
        - Is there anything else about that ___?
      MD

      spoken_exact <<~MD
        And we have got another for to ask about the meaning of something: 
        - When you say___ I imagine___. Is that what you mean?
      MD

      spoken_exact <<~MD
        Sometimes, especially when someone seems to be stuck on a problem, it is useful to ask these questions about outcomes or next steps: 
        - What would you like to have happen? 
        - Then what happens?
      MD

      spoken "We are going to do a quick demo "

      instruction "Facilitator to co-facilitator or producer to demo the questions:"

      spoken "And what are you doing today after the session?"

      instruction <<~MD
        Or any other easy question.

        Ask one or two of the questions listed in the chat as a follow-up. If you can’t think what to say, ask the “Is there anything else about that?” question twice.
      MD
    end

    producer do
      instruction " Copy to chat when the facilitator introduces the questions to the group: "

      chat <<~CHAT
        To check assumptions:

        - What kind of ___ is that? 
        - Is there anything else about that ___? 

        To ask about the meaning of something:

        - When you say___ I imagine___. Is that what you mean? 

        To ask about outcomes or next steps:

        - What would you like to have happen?
        - Then what happens?
      CHAT

      instruction "Participate in the demo if there is no co-facilitator"
    end
  end

  block(name: "Breakout 2", lead_by: :fx1) do
    length 9
    section_comment "(1 min briefing)"

    resources do
      breakout_room(:bor_2, default_duration: 8, halfway_message: true)
    end

    facilitator do
      instruction "Facilitator to group:"

      spoken "We’re going to send you into breakout rooms for 8 minutes to practise this different way of listening and responding."

      spoken_exact <<~MD
        We’d like you to have another conversation or continue the one you had before.
      MD

      spoken_exact <<~MD
        This time, as one person talks, the other person (or people) asks ONE or TWO of these questions we have given you.
      MD

      spoken_exact <<~MD
        If you can’t work out which question to use, you can ask “Is there anything else about that?” twice.
      MD

      spoken_exact <<~MD
        Remember, we are just practising here so it is a chance to try these questions out.
      MD

      spoken_exact <<~MD
        Manage the time so everyone has a chance to practise asking questions. Please only share what you are comfortable sharing.
      MD

      spoken "We’ll talk about what it’s like to be asked these questions and to ask these questions when you come back."
      spoken "Any questions before we send you in?"
    end

    producer do
      instruction "Copy to chat "

      chat <<~CHAT
        We’d like you to have another conversation or continue the one you had before. 

        This time, as one person talks, the other person (or people) asks ONE or TWO of these questions we have given you. 

        If you can’t work out which question to use, you can ask “Is there anything else about that?” twice.

        Manage the time so everyone has a chance to practise asking questions. Please only share what you are comfortable sharing.
      CHAT

      instruction <<~MD
        When the facilitator has finished talking, tell the group you are going to send them into BORs for 8 minutes
      MD

      send_into_bor :bor_2
    end
  end

  block(name: "Unpack Breakout 2", lead_by: :fx1) do
    length 8

    resources do
      flipchart(
        :flip_4,
        comment: "Summarise responses on flip, using people's words",
        description: "Learnings on listening to enquire and extend understanding",
        scribed_by: :fx2
      )
    end

    facilitator do
      spoken "Let’s find out what you noticed"

      spoken_exact "What did you notice about your state when you were talking about your topic?"
      spoken_exact "And what did you notice about your state when you were asking questions?"

      instruction "Facilitate brief discussion suggesting people can also put their answers in the chat. Aim for 2-3 examples, with one from the chat."

      handover "for reflections, fieldwork and close"
    end

    producer do
      instruction "Copy to chat as you hear the facilitator mention each of these questions:"

      chat <<~CHAT
        What did you notice about your state when you were talking about your topic?

        And what did you notice about your state when you were asking questions?
      CHAT
    end

  end

  # TODO: Sort out indentation of second level of bullets
  block(name: "Reflect on learning in this session", lead_by: :fx2) do
    length 6
    section_comment " Gather comments in chat and pick out some examples"

    facilitator do
      spoken "In the last three modules, we have covered state, assumptions, context. Today we’ve covered listening with curiosity.  Here are some questions to guide your thinking."

      spoken "Please put in the chat:"
      spoken_exact <<~MD
        -	What do you know now about listening well and responding with the questions we’ve introduced to you? 
        -	What difference does knowing this make?
        -	What’s one thing you’re taking away or might do differently now?
      MD

      spoken "We are almost at the end of this fourth module"
      spoken "There is space in the Course Handbook to capture any more thoughts you might have from today. "
    end

    producer do
      chat <<~CHAT
        - What do you know now about listening well and responding with the questions we’ve introduced to you? 
        - What difference does knowing this make?
        - What’s one thing you’re taking away or might do differently now?
      CHAT
    end
  end

  block(BCF::FlightPlans::CommonBlocks::Fieldwork.new(
    BCF::FlightPlans::CommonResources::FIELDWORK[4],
    id: :context_fieldwork,
    description: "",
    length: 2
  ), lead_by: :fx2)

  block(BCF::FlightPlans::CommonBlocks::Closing.new(:fx2, "Intentional Conversations", length: 1))

  instruction_ends

  block(BCF::FlightPlans::CommonBlocks::SPONSOR_CLOSE)
  block(BCF::FlightPlans::CommonBlocks::SPONSOR_DEBRIEF)
end
