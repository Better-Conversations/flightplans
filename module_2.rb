require 'bcf/flightplans'
require_relative './common_blocks'
require_relative './common_resources'

# This is from Version 2.2.3 in Box

module_2 = BCF::FlightPlans::ConventionalFlightPlan.build do
  module_title "Context"
  module_number 2

  learning_outcomes <<~MD
    Learners will be able to:

    - Explain how assumptions affect conversations
    - Describe the link between state and assumptions

    Suggested learning outcomes for further trainings/interventions

    - Discuss where their own assumptions come from
    - Describe limiting and helpful assumptions they hold
    - Explain how assumptions might lead to stereotyping and prejudice
    MD

  # TODO The app should know if there's a demo or not because it'll be declared
  demo <<~MD
    Prior to BOR1, Fx2 leads assumptions demo using an object (e.g. a plant). Fx1/Producer is the demo partner.
  MD

  block(BCF::FlightPlans::CommonBlocks::PRE_FLIGHT)

  block(BCF::FlightPlans::CommonBlocks::GREETING)

  block(name: "Welcome", lead_by: :fx1) do
    length 2

    resources do
      # Flipcharts should link to an image of the initial flipchart, in this repository, and
      # if useful examples of completed ones, and even ones at different stages of the flow

      flipchart(
        :flip_1,
        "Flip#1 for agenda",
        description: "Agenda (top half) and space for any questions or reflections",
        scribed_by: :fx1
      )
    end

    facilitator do
      instruction "Welcome people and introduce facilitator(s), producer and any observers and briefly explain their roles."
      spoken "You will need a pen and paper today, so if you need to grab those, you can do it now."

      # TODO: Rewrite **'s as an BCF call. This will involve moving into cmarker
      spoken "In Module 1 we looked at state. Today, we are going to explore how quickly and easily we make assumptions, as making assumptions can cause misunderstandings between us and other people."

      instruction "Go through agenda on flip"
    end
  end

  block(BCF::FlightPlans::CommonBlocks::ANY_QUESTIONS)

  block(BCF::FlightPlans::CommonBlocks::STATE_CHECKIN_TLM)

  block(name: "Fieldwork reflections", lead_by: :fx2) do
    length 4

    facilitator do
      spoken "Let’s have a quick recap of the fieldwork. Please share only what you’d like to and put your answers in the chat, so we hear from everyone quickly."
      spoken_exact <<~MD
        Think of one conversation you had recently – maybe it was a good conversation, maybe it wasn’t
        - What was your state before the conversation?
        - What was your state after the conversation?

        Just quickly put the two states in the chat, for example green/amber or amber/green
      MD

      instruction "If time permits, invite examples from 1-2 people"
      spoken "Without adding too much detail, what caused the change in state?"
      instruction "Handover to Fx1 for Assumptions model."
    end

    producer do
      chat <<~CHAT
        Think of one conversation you had recently – maybe it was a good conversation, maybe it wasn’t.
        - What was your state before the conversation?
        - What was your state after the conversation?

              e.g. green/amber or amber/green
              CHAT
    end
  end

  block(name: "Assumptions model", lead_by: :fx1) do
    length 5

    resources do
      flipchart(
        :flip_2,
        "use to explain the model",
        description: "Assumptions diagram (as in handbook)",
        scribed_by: :fx1
      )
    end

    facilitator do
      spoken "There is an explanation in the handbook in Section 2 to help you remember the diagram."
      spoken <<~MD 
        You can describe behaviour in a conversation using a simple stimulus-response model: 
        -	I see/hear (external)
        -	I think/feel (internal; what we are calling state)
        -	I say/do (external)
        MD
      instruction "Point to each circle as you explain:"

      spoken <<~MD
                [I see/hear] \ 
                We take in information from the outside world through our senses. Seeing and hearing are the main senses we use in conversations.
                MD
      spoken <<~MD
                [I think/feel] \ 
                We process that information internally. Our mood or physical needs can influence how we do that because we also use data from our bodies.
                Thinking processes include: \ 
                - What we pay attention to
                - The meaning we make from things and the language we use
                - The assumptions that we hold as true
                - Reasoning and how we make judgements or inferences about things
                MD
      spoken <<~MD
                [I say/do] \ 
                We act on our thoughts or feelings. Often unconsciously reacting, sometimes consciously responding.
                MD
      spoken <<~MD
                We are going to look at thinking processes first and come back to discuss feelings."
                MD
      end

    producer do
      instruction "Prepare BORs in 2/3s for **8 minutes** if not already done"
    end
  end

# TODO: Insert names of producer/second facilitator if they are known
# TODO: Add Fx1 as demo partner
block(name: "Demonstrate Breakout#1 activity", lead_by: :fx2) do
  length 5
  
  facilitator do
    spoken "We are going to demonstrate how easily and how quickly we can make assumptions."
    spoken "You’ll need your pen and paper for this."
    instruction "Facilitator to group:"
    spoken "I’m going to ask [Producer/Co-facilitator] to pick an object in their space that we can’t see and tell me what that object is briefly…"
    instruction "Facilitator to Producer/Co-facilitator"
    spoken "[Producer/Co-facilitator], What object are you looking at?"
    instruction "Producer/Co-facilitator:"
    spoken "I can see a plant."
  end
  
  producer do
    instruction "Participate in demo if no co-facilitator"
  end
end

  # TODO: Escape the in strings, Typst uses it as a control character
  block(name: "Breakout#1", lead_by: :fx2) do
    length 8

    resources do
      breakout_room(:bor_1)
    end

    facilitator do
      spoken "You will have 6 minutes to do this exercise in breakout rooms."
      spoken "We are going to explore what happens when we share our context."
      spoken "Please only ask what is appropriate for this setting and share only what you feel comfortable sharing in the group when we come back into the main room."

      spoken("One person will choose ONE of the starter questions below to ask your partner. " \
               "Continue the conversation and ask more questions to improve your understanding of the other person’s context.",
             fixed: true)
      spoken("Starter questions:
-	Psychological: What would you like to have happen after attending this course?
-	Historical: What have you learned so far on this course?
-	Time: What were you doing before you came to the course today? What else do you have on today?
-	Environmental: Where are you in the world?
", fixed: true)

      spoken("Manage the time so everyone gets a chance to try out one of the starter questions. ", fixed: true)

      spoken "We will send a message into the rooms to let you know when you are halfway through the time"
      spoken "When you come back we will talk about what it’s like when you are asked about your context and know more context about the other person"
      spoken "Any questions before we send you in?"
    end

    producer do
      instruction "Copy this to chat when you hear the facilitator introduce the questions:"

      # TODO: Add support for messages that are supposed to be copied piecemeal.
      chat <<CHAT
We are going to explore what happens when we share our context.

One person will choose ONE of the starter questions below to ask your partner.

Continue the conversation and ask more questions to improve your understanding of the other person’s context.

Starter questions:

- Psychological: What would you like to have happen after attending this course?

- Historical: What have you learned so far on this course?

- Time: What were you doing before you came to the course today? What else do you have on today?

- Environmental: Where are you in the world?

Manage the time so everyone gets a chance to try out one of the starter questions.
CHAT

      instruction "When the facilitator has finished giving the instructions/answering questions." \
                    "Tell the group you are going to send them into BORs for 6 minutes"

      instruction "Send into BORs"
      instruction "Broadcast halfway message:"

      # TODO: Parameterize the time of a breakout room
      chat "Halfway, 3 minutes remaining"
    end
  end

  block(name: "Unpack Breakout activity", lead_by: :fx2) do
    length 6
    section_comment "Fx1 scribes"

    resources do
      flipchart(
        :flip_3,
        "Add to Flip#3 for up to 3 people and/or use chat.",
        description: "Learnings on context",
        scribed_by: :fx2
      )

      breakout_room(:bor_1)
    end

    facilitator do
      spoken "Let’s find out what you discovered:"
      spoken_fixed "What happened when you knew more about the other person’s context "
      spoken_fixed "What was it like for you, when you were asked about your context?"

      instruction "Facilitate brief discussion suggesting people can also put their answers in the chat." \
                    "Aim for 2-3 examples, with one from the chat."

      instruction "Handover to Fx1 for exercise on improving conversations."
    end

    producer do
      instruction "Prepare BORs in same 2/3s for 6 minutes"

      chat <<CHAT
What happened when you knew more about the other person’s context?

What was it like for you, when you were asked about your context?
CHAT
    end
  end

  block(name: "Breakout#2", lead_by: :fx1) do
    length 8

    resources do
      breakout_room(:bor_2)
    end

    facilitator do
      spoken "We are going to put you in breakouts again for 6 minutes to talk about this."
      spoken_fixed "We are going to consider improving a conversation using the 6 elements of context: "
      spoken_fixed "Historical, psychological, social, cultural, environmental, and time-based (temporal). "
      spoken_fixed "Remember that context helps determine the assumptions we make."
      spoken_fixed "For a conversation that you want to be better in the future,  "
      spoken "Take a moment to think about what you would like to have happen in that conversation. "

      instruction "[pause for thinking]"

      spoken_fixed "
- What might you have to consider about the other persons’ context when preparing for your conversation with them?
- How would you find out about their context before and during the conversation?
"

      spoken_fixed "Manage the time so everyone has a chance to answer the questions."
      spoken "When you’re in your breakout rooms, you don’t need to tell your partner what the conversation is about or who it’s with. "
      spoken "Keep your answers brief. Please only share what you are comfortable sharing."
      spoken "Any questions before we send you in? "
    end

    producer do
      instruction "Copy to chat when you hear the facilitator giving the instructions:"

      chat <<CHAT
We are going to consider improving a conversation using the 6 elements of context:

Historical, psychological, social, cultural, environmental, and time-based (temporal)

For a conversation that you want to be better in the future:

- What might you have to consider about the other persons’ context when preparing for your conversation with them?
- How would you find out about their context before and during the conversation?

Manage the time so everyone has a chance to answer the questions.
CHAT

      instruction "When the facilitator has finished giving the instructions/answering questions." \
                    "tell the group you are going to send them into BORs for 6 minutes"

      instruction "Send into BORs"
      instruction "Broadcast halfway message:"
      chat "Halfway, 3 minutes remaining"
    end
  end

  block(name: "Unpack Breakout#2 activity", lead_by: :fx1) do
    length 7
    section_comment "Fx2 scribes"

    resources do
      flipchart(
        :flip_4,
        "Add to Flip#4 for up to 3 people and/or use chat.",
        description: "Learnings on context",
        scribed_by: :fx2
      )
      breakout_room(:bor_2)
    end

    facilitator do
      spoken "Let’s find out what you just noticed."
      spoken_fixed "
When preparing for your conversation:
- What might you have to consider about another person and their context?
- How might you find out about their context before and during the conversation?
"

      instruction "Facilitate brief discussion suggesting people can also put their answers in the chat. Aim for 2-3 examples, with one from the chat."

      instruction "If there is time extend the discussion e.g.:"

      spoken "Do you think it is easier to make assumptions about a someone you know well or someone you don’t know?"
      spoken "What kind of assumptions might you make?"
      spoken "How easy it to correct your assumptions?"
      spoken "Just to recap, there are six elements to context that affect each of us in our conversations:  Historical, psychological, social, cultural, environmental, and time-based (temporal)."
      spoken "State is an important aspect of psychological context."
      spoken "Context gives us a way of making meaning and understanding a situation.  It helps determine the assumptions we make."
      spoken "
We’d like you to consider these questions, *thinking about what you know about state, assumptions and context*:
- *What will you do to manage your state before a conversation?*
- *How might your context affect your state*
"

      instruction "Ask people to put answers in chat. Facilitate brief discussion if time."
      instruction "Handover to Fx2 for reflection, fieldwork and close."
    end

    producer do
      instruction "Copy in chat (when you hear facilitator say these):"

      chat <<CHAT
When preparing for your conversation:

- What might you have to consider about another person and their context?

- How might you find out about their context before and during the conversation?
CHAT
    end
  end

  block(name: "Link to state", lead_by: :fx1) do
    length 5

    facilitator do
      spoken "Just to recap, there are six elements to context that affect each of us in our conversations:  Historical, psychological, social, cultural, environmental, and time-based (temporal)."
      spoken "State is an important aspect of psychological context."
      spoken "Context gives us a way of making meaning and understanding a situation.  It helps determine the assumptions we make."

      spoken <<MD
We’d like you to consider these questions, *thinking about what you know about state, assumptions and context*:
-	*What will you do to manage your state before a conversation?*
-	*How might your context affect your state*
MD

      instruction "Ask people to put answers in chat. Facilitate brief discussion if time."
      instruction "Handover to Fx2 for reflection, fieldwork and close."
    end

    producer do
      instruction "Copy in chat (when you hear facilitator say these):"

      chat <<CHAT
6 elements of context: Historical, psychological, social, cultural, environmental, and time-based (temporal)

Thinking about what you know about state, assumptions and context:

- What will you do to manage your state before a conversation?

- How might your context affect your state?
CHAT
    end
  end

  block(name: "Reflect on the learning in this session", lead_by: :fx2) do
    length 5

    section_comment "Gather comments in chat and pick out some examples"

    facilitator do
      spoken "We have covered the context in which our conversations take place today. Let’s reflect on what you know now."
      spoken_exact <<~MD
        Thinking about the conversations you are going to have in the next week, and what we have just learned on this module, please put in the chat:
        - What difference does understanding context make to having Better Conversations?
        - What you will do differently now you know this?
      MD

      spoken "There is space in the Course Handbook to capture any more thoughts you might have from today."
    end

    producer do
      chat <<CHAT
Thinking about the conversations you are going to have in the next week, and what we have just learned on this module…

- What difference does understanding context make to having Better Conversations?
- What will you do differently now you know this?
CHAT
    end
  end

  block(BCF::FlightPlans::CommonBlocks::Fieldwork.new(
    BCF::FlightPlans::CommonResources::FIELDWORK[2],
    id: :context_fieldwork,
    description: "",
    length: 2
  ), lead_by: :fx2)

  block(lead_by: :fx2) do
    length 1
    name "Close"

    facilitator do
      spoken "If you have any further questions or anything you’d like to share, we will stay on the Zoom call for a few minutes after the session finished."
      spoken "Otherwise, we will see you next time where we will be exploring listening."
      instruction "Handover to Sponsor"
    end

    producer do
      instruction "If leaving the session early, make facilitator a host first."
    end
  end

  block(BCF::FlightPlans::CommonBlocks::SPONSOR_CLOSE)
  block(BCF::FlightPlans::CommonBlocks::SPONSOR_DEBRIEF)
end
