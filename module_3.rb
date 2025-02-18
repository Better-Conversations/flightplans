require 'bcf/flightplans'
require_relative './common_blocks'
require_relative './common_resources'

# TODO check this is the same as version 2.2.3 here https://amphora.app.box.com/folder/158341017039?s=46iq09ejyhjjq6fkp2jgbw0jg4pjiu6h

MODULE_3 = BCF::FlightPlans::ConventionalFlightPlan.build do
  module_title "Context"
  module_number 3

  learning_outcomes <<~MD
    Learners will be able to:

    - Describe the elements of context in conversations
    - Link context, assumptions and state

    Suggested learning outcomes for further trainings/interventions

    - Describe how sociocultural context affects conversations
  MD

  demo <<~MD
    No demo.

    Alternative example for context:

    - Imagine you are watching TV and have muted it for the commercials. The first commercial you see shows a kitchen knife setting on a cutting board on the counter. Around it there are lots of different kinds of vegetables and a stock pot. Given that context, you would likely assume they were advertising a cooking show.
    - The next commercial starts. You see the same kitchen knife. This time it is in the trunk (boot) of car along with some rope, duct tape, a tarp and a shovel.  That context brings up a completely different kind of show! Even though the kitchen knife is exactly the same.
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
      instruction "Welcome people and introduce facilitator(s), producer and any observers and briefly explain their roles."
      instruction "Point out this where this module is on the course overview on the flip"
      spoken "Last time we looked at how quickly and easily we make assumptions, without being aware of them. We will do a quick review of that soon."
      # TODO: Rewrite **'s as an BCF call. This will involve moving into cmarker
      spoken "Then we will begin to explore the context around a conversation. Context helps us make meaning of the world, and determines _what_ assumptions we make."

      instruction "Go through agenda on flip"
    end
  end

  block(BCF::FlightPlans::CommonBlocks::ANY_QUESTIONS)

  block(BCF::FlightPlans::CommonBlocks::STATE_CHECKIN_TLM)

  block(name: "Fieldwork reflections", lead_by: :fx2) do
    length 4
    section_comment "Gather comments in chat and pick out some examples"

    facilitator do
      spoken "Let's have a quick recap of the fieldwork. Please share only what you’d like to and put your answers in the chat, so we hear from everyone quickly."
      spoken_exact "Think of one conversation you had recently – maybe it was a good conversation, maybe it wasn't"
      spoken_exact "Were your assumptions in that conversation accurate?"
      spoken_exact "Just quickly put yes or no in the chat"

      instruction "If time permits, facilitator asks one person who answers “No” and one person who answers “Yes”:"
      spoken "Without adding too much detail, when your assumption was/wasn't accurate, then what happened?"
      handover "for the context model"
    end

    producer do
      chat <<~CHAT
        Think of one conversation you had recently – maybe it was a good conversation, maybe it wasn't.

        - Were your assumptions in that conversation accurate?
        - Please answer Yes or No in the chat.
      CHAT
    end
  end

  block(name: "Context model", lead_by: :fx1) do
    length 7

    resources do
      flipchart(
        :flip_2,
        comment: "Use flip to explain the model",
        description: "Context diagram (as in handbook, pre-prepared)",
        scribed_by: :fx1
      )
    end

    facilitator do
      spoken "There is an explanation in the handbook in Section 3 to help you remember the diagram."
      spoken "In Better Conversations, context is what gives meaning to the conversation."
      spoken "Context is important because it defines our subjective experience."
      spoken "We've extended the sense and respond model to show that context affects all our sense-making and behaviour."
      spoken "Each of us brings our own context to conversations. And we take it into our future conversations, so our context can change over time."
      spoken "Context also determines _what_ assumptions we make. We can make different assumptions in different contexts."
      spoken "As an example, imagine you were in the UK and you saw people carrying umbrellas. You might think it was going to rain."
      spoken "Now imagine you are in a country in South Asia. If you saw people carrying umbrellas, they might be wanting to use them as parasols. If it was monsoon season, you might think the umbrella has a dual use."
      spoken "We have broken context down into 6 overlapping areas to help explain what it is."

      spoken <<~TYPST_SPOKEN
        When considering context, we can think about:
        - _Psychobiology_ (for example, your state, your personal values)
        - _Socioculture_ (for example, relationships, group behaviour, cultural values and beliefs)
        - _History_ (for example, what’s happened in the past, what’s documented or recorded)
        - _Environment_ (for example, what’s going in the physical space you are in)
        - _Time-based_ (for example, time zone, whether it’s day or night)
        - _Method_ (for example, the way you are communicating, the process for communicating)
      TYPST_SPOKEN

      spoken <<~MD
        Some examples of your context we have already covered so far in this course are:
        - Asking where in the world you are and what time zone you are in (environment, culture and time-based context)
        - Asking how you are feeling, when we do the state check-in (psychobiology)
      MD

      spoken "We look at psychobiological, time-based, historical, and environmental context in this course."
      spoken "We practice verbal communication in this course however you can apply the concepts to written communication."
      spoken "We aren’t covering sociocultural context in this course in depth – it's beyond the scope of what we can do in the time we have."
      spoken "What we are going to do now is put you in breakout rooms to find out more about the impact of knowing someone’s context."
      handover "for the context exercise"
    end

    producer do
      instruction "Prepare BORs in 2/3s for **6 minutes** if not already done"
    end
  end

  # TODO: Escape the in strings, Typst uses it as a control character
  block(name: "Breakout#1", lead_by: :fx2) do
    length 8
    section_comment "(2 min briefing)"

    resources do
      breakout_room(:bor_1, default_duration: 6, halfway_message: true)
    end

    facilitator do
      spoken "You will have 6 minutes to do this exercise in breakout rooms."
      spoken "We are going to explore what happens when we share our context."
      spoken "Please only ask what is appropriate for this setting and share only what you feel comfortable sharing in the group when we come back into the main room."
      spoken "The exercise is going in the chat so it should travel to the breakout room with you. If you are on a mobile device, you might want to take a note of it in case you can’t see it."
      spoken_exact "One person will choose ONE of the starter questions below to ask your partner. " \
                     "Continue the conversation and ask more questions to improve your understanding of the other person’s context."
      spoken_exact <<~MD
        Starter questions:
        -	Psychobiology: What would you like to have happen after attending this course?
        -	History: What have you learned so far on this course?
        -	Time: What were you doing before you came to the course today? What else do you have on today?
        -	Environment: Where are you in the world?"
      MD

      spoken_exact "Manage the time so everyone gets a chance to try out one of the starter questions. "

      spoken "We will send a message into the rooms to let you know when you are halfway through the time"
      spoken "When you come back we will talk about what it’s like when you are asked about your context and know more context about the other person"
      spoken "Any questions before we send you in?"
    end

    producer do
      instruction "Copy this to chat when you hear the facilitator introduce the questions:"

      # TODO: Add support for messages that are supposed to be copied piecemeal.
      chat <<~CHAT
        We are going to explore what happens when we share our context.

        One person will choose ONE of the starter questions below to ask your partner.

        Continue the conversation and ask more questions to improve your understanding of the other person’s context.

        Starter questions:

        - Psychobiology: What would you like to have happen after attending this course?
        - History: What have you learned so far on this course?
        - Time: What were you doing before you came to the course today? What else do you have on today?
        - Environment: Where are you in the world?

        Manage the time so everyone gets a chance to try out one of the starter questions.
      CHAT

      instruction "When the facilitator has finished talking tell the group you are going to send them into BORs for 6 minutes"
      send_into_bor :bor_1
    end
  end

  block(name: "Unpack Breakout activity", lead_by: :fx2) do
    length 6

    resources do
      flipchart(
        :flip_3,
        comment: "Summarise responses on flip, using people's words",
        description: "Learnings on context",
        scribed_by: :fx2
      )
    end

    facilitator do
      spoken "Let’s find out what you discovered:"
      spoken_exact "What happened when you knew more about the other person’s context "
      spoken_exact "What was it like for you, when you were asked about your context?"

      instruction "Facilitate brief discussion suggesting people can also put their answers in the chat." \
                    "Aim for 2-3 examples, with one from the chat."

      handover "for exercise on improving conversations"
    end

    producer do
      instruction "Prepare BORs in same 2/3s for 6 minutes"

      chat <<~CHAT
        What happened when you knew more about the other person’s context?

        What was it like for you, when you were asked about your context?
      CHAT
    end
  end

  block(name: "Breakout#2", lead_by: :fx1) do
    length 8
    section_comment "(2 min briefing)"

    resources do
      breakout_room(:bor_2, default_duration: 6, halfway_message: true)
    end

    facilitator do
      spoken "We are going to put you in breakouts again for 6 minutes to talk about this."
      spoken_exact "We are going to consider improving a conversation using the 6 elements of context: "
      spoken_exact "Psychobiology, Socioculture, History, Environment, Time, and Method."
      spoken "Remember that context helps determine the assumptions we make."
      spoken_exact "Think about a conversation you'd like to be better."
      spoken "What you would like to have happen in that conversation?"

      instruction "[pause for thinking]"

      spoken_exact <<~MD
        - What might you have to consider about the other person’s context when preparing for your conversation with them?
        - How would you find out about their context before and during the conversation?
      MD

      spoken_exact "Manage the time so everyone has a chance to answer the questions."
      spoken "When you’re in your breakout rooms, you don’t need to tell your partner what the conversation is about or who it’s with. "
      spoken "Keep your answers brief. Please only share what you are comfortable sharing."
      spoken "Any questions before we send you in? "
    end

    producer do
      instruction "Copy to chat when you hear the facilitator giving the instructions:"

      chat <<~CHAT
        We are going to consider improving a conversation using the 6 elements of context:

        Psychobiology, Socioculture, History, Environment, Time, and Method.

        Think about a conversation you'd like to be better:

        - What might you have to consider about the other persons’ context when preparing for your conversation with them?
        - How would you find out about their context before and during the conversation?

        Manage the time so everyone has a chance to answer the questions.
      CHAT

      instruction "When the facilitator has finished talking tell the group you are going to send them into BORs for 6 minutes"
      send_into_bor :bor_2
    end
  end

  block(name: "Unpack Breakout#2 activity", lead_by: :fx1) do
    length 7

    resources do
      flipchart(
        :flip_4,
        comment: "Summarise responses on flip, using people's words",
        description: "Learnings on context",
        scribed_by: :fx2
      )
    end

    facilitator do
      spoken "Let’s find out what you just noticed."
      spoken_exact <<~MD
        When preparing for your conversation:
        - What might you have to consider about another person and their context?
        - How might you find out about their context before and during the conversation?
      MD

      instruction "Facilitate brief discussion suggesting people can also put their answers in the chat. Aim for 2-3 examples, with one from the chat."

      instruction "If there is time extend the discussion e.g.:"

      spoken "Do you think it is easier to make assumptions about a someone you know well or someone you don’t know?"
      spoken "What kind of assumptions might you make?"
      spoken "How easy it to correct your assumptions?"
    end

    producer do
      instruction "Copy in chat (when you hear facilitator say these):"

      chat <<~CHAT
        When preparing for your conversation:

        - What might you have to consider about another person and their context?
        - How might you find out about their context before and during the conversation? 
      CHAT
    end
  end

  block(name: "Link to state", lead_by: :fx1) do
    length 5

    facilitator do
      spoken "Just to recap, there are six elements to context that affect each of us in our conversations:  Psychobiology, Socioculture, History, Environment, Time, and Method."
      spoken "State is an important aspect of psychobiological context."
      spoken "Context gives us a way of making meaning and understanding a situation.  It helps determine the assumptions we make."

      spoken <<~MD
        We’d like you to consider these questions, *thinking about what you know about state, assumptions and context*:
        -	What will you do to manage your state before a conversation?
        -	How might your context affect your state
      MD

      instruction "Ask people to put answers in chat. Facilitate brief discussion if time."
      handover "for reflections, fieldwork and close"
    end

    producer do
      instruction "Copy in chat (when you hear facilitator say these):"

      chat <<~CHAT
        6 elements of context: Psychobiology, Socioculture, History, Environment, Time, and Method.

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
        - What you will do differently now you know this?"
      MD

      instruction "Use chat to gather comments. If time permits, invite examples from 1-2 people."

      spoken "There is space in the Course Handbook to capture any more thoughts you might have from today."
    end

    producer do
      chat <<~CHAT
        Thinking about the conversations you are going to have in the next week, and what we have just learned on this module…

        - What difference does understanding context make to having Better Conversations?
        - What will you do differently now you know this?
      CHAT
    end
  end

  block(BCF::FlightPlans::CommonBlocks::Fieldwork.new(
    BCF::FlightPlans::CommonResources::FIELDWORK[3],
    id: :context_fieldwork,
    description: "",
    length: 2
  ), lead_by: :fx2)

  block(BCF::FlightPlans::CommonBlocks::Closing.new(:fx2, "Listening with Curiosity", length: 1))

  instruction_ends

  block(BCF::FlightPlans::CommonBlocks::SPONSOR_CLOSE)
  block(BCF::FlightPlans::CommonBlocks::SPONSOR_DEBRIEF)

end
