require 'bcf/flightplans'
require_relative './common_blocks'
require_relative './common_resources'

MODULE_5 = BCF::FlightPlans::ConventionalFlightPlan.build do
  module_title "Intentional Conversations"
  module_number 5

  learning_outcomes <<~MD
    Learners will be able to:
      -	Describe why intention is different to impact
      -	Practice preparing for an intentional conversation

    Suggested learning outcomes for further trainings/interventions
      -	Different types of intentional conversations e.g. sales, performance management, compliance
  MD

  demo <<~MD
    Fx1 to ask Fx2 questions to demo the motivation-outcome-intention-impact loop to prepare for a conversation with a colleague. Make sure that the example is something easy to understand and not likely to trigger strong emotions in you or the group.
  MD

  block(BCF::FlightPlans::CommonBlocks::PRE_FLIGHT)

  block(BCF::FlightPlans::CommonBlocks::GREETING)

  instruction_starts

  block(name: "Welcome", lead_by: :fx1) do
    length 2
    # TODO: Fix how to show flipchart as comments
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

        Point out this where this module is on the course overview on the flip.
      MD

      spoken "Last time we looked at listening with curiosity. We will do a quick review of that in just a bit."
      spoken "Today we are going to consider intentional conversations. These are conversations where there is a clear purpose and outcome needed."

      spoken "We’ve covered what impacts conversations in Modules 1-4:"
      spoken_exact <<~MD
        The key factors are:

        - State
        - Assumptions
        - Context
        - How you listen and how you respond
      MD
      spoken "We are going to these further by considering intention, impact, motivations and outcomes."

      instruction "Go through agenda on flip"
    end

    producer do
      instruction "Copy into chat when you hear the facilitator ask about questions:"

      chat <<~CHAT
        Factors that affect conversations:

        - State
        - Assumptions
        - Context
        - How you listen and how you respond
      CHAT
    end

  end

  block(BCF::FlightPlans::CommonBlocks::ANY_QUESTIONS)

  block(BCF::FlightPlans::CommonBlocks::STATE_CHECKIN_TLM)

  block(name: "Fieldwork reflections", lead_by: :fx2) do
    length 4
    section_comment "Gather comments in chat and pick out some examples"

    facilitator do
      spoken "Let’s have a quick recap of the fieldwork. Please share only what you’d like to and put your answers in the chat, so we hear from everyone quickly."
      spoken_exact <<~MD
        Think of one conversation you had recently

        -	What kind of listening did you do?
        -	What impact did that have on the conversation?
      MD

      instruction <<~MD
        If time, invite examples from 1-2 people.
        Handover to Fx1 for considering the difference between intentions and impact.
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

  block(name: "Example of difference in intention and impact", lead_by: :fx1) do
    length 4
    facilitator do
      spoken "We are going to consider how intention and impact are different."
      spoken "I'm going to give you a phrase. Think about what happens for you when you hear it."
      instruction "Pause to let people prepare to think about the phrase."

      spoken "“You have so much potential”"
      spoken "What happens for you when you hear that?"

      instruction "Facilitate brief discussion on impact of statement, how it can be viewed as criticism or praise depending on context."
      spoken "This is an example of how the same phrase can have different impacts depending on the context and the person hearing it."
    end
  end

  block(name: "Conversation Model", lead_by: :fx1) do
    length 3
    resources do
      flipchart(
        :flip_2,
        comment: "Use flip to explain the concepts",
        description: "Conversation diagram (reuse Module 4 Flip#2 if desired)",
        scribed_by: :fx1
      )
    end

    facilitator do

      spoken "Let's look at the conversation model from Module 4 to see how that phrase might land."
      spoken "We have the LHS and RHS of the model representing two people in a conversation."

      instruction "Point to the steps on the LHS as you say this:"

      spoken <<~MD
        When we are in conversation with someone, we can know:
        -	What we see/hear
        -	We think and feel (our state)
        -	What we say or do as a result
      MD

      instruction "Point to the RHS of the model as you say this:"

      spoken <<~MD
        We don’t know:
        - What other people pay attention to (what they see and hear)
        - What they really think and feel
        - Although their behaviour (what they say and do) might give us clues about that if we know them well.
      MD

      spoken "Now let's map intention and impact on this diagram"
      instruction "Place a blue Post-it note labelled ‘Intention’ next to the ‘I think/feel’ step on the LHS"
      spoken "Our intention represents what we plan to say or do in a conversation. We may not be conscious of it, but it’s there."

      spoken "The impact on the other person, what they think or feel about what we say or do, may or may not be what we intended."
      spoken "You may think what you say or do will land in green"

      instruction "Place a green post labelled 'Impact' next to the 'They think/feel' step on the RHS"

      spoken "However they could go into an amber/yellow or red state if they interpret it a different way."

      instruction "Add amber/yellow and red Post-its next to ‘They think/feel’ on the RHS"

      spoken "And it works the other way around."

      instruction <<~MD
        Swap blue intention and red/yellow/green impact Post-its around so the intention Post-it sits with they think/feel and impact Post-its sit with I think/feel
      MD

      spoken "For example, think about ahen someone given you their opinion or some feedback, and you experience an amber/yellow or red state."

      instruction "Handover to Fx2 for exercise on intention and impact"
    end

    producer do
      instruction "Prepare BORs in 2/3s for 6 minutes if not already done"
    end

  end

  block(name: "Breakout 1", lead_by: :fx2) do
    length 7
    section_comment "(1 min briefing)"

    resources do
      breakout_room(:bor_1, default_duration: 6, halfway_message: true)
    end

    facilitator do
      spoken "We’re going to send you into breakout rooms for 6 minutes to explore intention and impact."
      spoken "The exercise is going in the chat so it should travel to the breakout room with you. If you are on a mobile device, you might want to take a note of it in case you can’t see it."
      spoken "Please share only what you feel comfortable sharing in the group when we come back into the main room."
      spoken_exact <<~MD
        Think of one conversation you had recently where someone gave you their opinion or some feedback.

        Ask each other these questions:

        - Briefly, what happened? What did you see or hear?
        - What impact did that have on you?
        - Based on that, what did you assume about them and their intentions?

        Manage the time so everyone gets a chance to talk about their experience.
      MD
      spoken_exact "When we come back we will briefly share how we might make assumptions about intentions from the impact we experience."
      spoken "Any questions before we send you in?"
    end

    producer do

      instruction "Copy to chat when you hear the facilitator say this: "

      chat <<~CHAT
        Think of one conversation you had recently where someone gave you their opinion or some feedback.

        Ask each other these questions:

        - Briefly, what happened? What did you see or hear?
        - What impact did that have on you?
        - Based on that, what did you assume about them and their intentions?

        Manage the time so everyone gets a chance to talk about their experience
      CHAT

      instruction "When the facilitator has finished talking tell the group you are going to send them into BORs for 6 minutes"
      send_into_bor :bor_1
    end

  end

  block(name: "Unpack Breakout 1", lead_by: :fx2) do
    length 6

    resources do
      flipchart(
        :flip_3,
        comment: "Summarise responses on flip, using people's words",
        description: "Learnings on intention and impact",
        scribed_by: :fx1
      )
    end

    facilitator do
      spoken "Let’s find out what you noticed:"

      spoken_exact <<~MD
        - What was the impact of being told someone's opinion?
        -	Based on this, What did you assume about the person and their intentions?
      MD

      instruction <<~MD
        Facilitate brief discussion suggesting people can also put their answers in the chat. Aim for 2-3 examples, with one from the chat.

        If time allows, ask
        - **How might you hold your assumptions lightly?**

        Handover to Fx1 for discussion on intentional conversations
      MD

    end

    producer do
      instruction "Copy to chat as you hear the facilitator mention each of these questions:"

      chat <<~CHAT
        - What was the impact of being told someone's opinion?
        -	Based on this, What did you assume about the person and their intentions?
      CHAT

      instruction "Prepare BORs in same 2/3s for 8 minutes"
    end
  end

  block(name: "Demonstrate Breakout 2", lead_by: :fx1) do
    length 6
    resources do
      flipchart(
        :flip_2,
        comment: "Use flip to explain process",
        description: "Conversation diagram (reuse Module 4 Flip#2 if desired)",
        scribed_by: :fx1
      )
    end

    facilitator do
      spoken "We are going to practise a way of separating intention and impact to help us prepare for intentional conversations. "
      spoken "This helps us to be clear about what we want to say and consider what the impact might be on the other person."

      instruction <<~MD
        Facilitator to demo motivation-outcome-intention-impact loop.

        Make sure that the example is something easy to understand and not likely to trigger strong emotions in you or the group.
      MD

      instruction "Facilitator to co-facilitator or producer to demo the questions:"

      spoken_exact "Briefly, what's the context?"
      spoken_exact "What's important here? For you and for them?"
      spoken_exact "What would you like to have happen? Then what happens?"
      spoken_exact "What will you say or do?"
      spoken_exact "What might the impact be?"

      instruction "Let's see how this works on the conversation model."

      instruction "Place a blue Post-it note labelled 'What's important here? (MOTIVATIONS)' between the 'I think/feel' and 'they think/feel' steps"
      spoken "We consider what’s important for both of you."

      instruction "Place a blue Post-it note labelled 'What would you like to have happen (OUTCOME)' over the ‘I think/feel’ step on the LHS"
      spoken "This is the outcome you want from the conversation. What you'd like to have happen. Asking 'Then what happens?' extends this."

      instruction "Place a blue Post-it note labelled 'What will you say or do (INTENTION)' between the ‘I think/feel' and 'I say/do’ steps on the LHS"
      spoken "This is what you plan to say or do in the conversation. Your intention."

      instruction "Place a blue Post-it note labelled 'What might the impact be (IMPACT ON THEM?)' over the ‘They think/feel’ step on the RHS"
      spoken "Then we consider what the impact might be on the other person."

      spoken "Bear in mind that you are making assumptions about their motivations and the impact on them."
      spoken "You can repeat this loop as many times as you like to explore what you might say or do."

      instruction "Handover to Fx2 for the next exercise on preparing for intentional conversations."
    end

    producer do
      instruction "Participate in the demo if there is no co-facilitator"
    end
  end

  block(name: "Breakout 2", lead_by: :fx2) do
    length 9
    section_comment "(1 min briefing)"

    resources do
      breakout_room(:bor_2, default_duration: 8, halfway_message: true)
    end

    facilitator do
      spoken "We are going to put you into breakouts again. You will have 8 minutes for this exercise"

      spoken_exact <<~MD
        Think about a conversation you'd like to be better.
        Help each other prepare for that conversation. Ask each other these questions:

        - Briefly, what's the context?
        - What's important here? For you and for them?
        - What would you like to have happen? Then what happens?
        - What will you say or do?
        - What might the impact be?

        Manage the time so everyone gets a chance to practice these questions.
      MD

      spoken "Please share only what you feel comfortable sharing in the group when we come back into the main room."
      spoken "When you return, we will briefly share what we noticed about moving around the loop."
      spoken "Any questions before we send you in?"
    end

    producer do
      chat <<~CHAT
        Think about a conversation you'd like to be better.
        Help each other prepare for that conversation. Ask each other these questions:

        - Briefly, what's the context?
        - What's important here? For you and for them?
        - What would you like to have happen? Then what happens?
        - What will you say or do?
        - What might the impact be?

        Manage the time so everyone gets a chance to practice these questions.
      CHAT

      instruction "When the facilitator has finished talking tell the group you are going to send them into BORs for 8 minutes"
      send_into_bor :bor_2
    end
  end

  block(name: "Unpack Breakout 2", lead_by: :fx2) do
    length 6

    resources do
      flipchart(
        :flip_4,
        comment: "Summarise responses on flip, using people's words",
        description: "Learnings on preparing for an intentional conversation",
        scribed_by: :Fx1
      )
    end

    facilitator do

      spoken "Let’s find out what you noticed. We are going to focus on the _process_ you just used, focusing on outcomes, intentions and impact."
      spoken_exact "What did you notice about moving from outcome to intention?"
      spoken_exact "What did you notice about moving from intention to impact?"

      instruction <<~MD
        Facilitate brief discussion suggesting people can also put their answers in the chat. Aim for 2-3 examples, with one from the chat.

        Stick to the process and don't get into the content of the examples they give (to keep it safe for them).

        If time allows, ask

        - **And is there anything else that you noticed about this process?**
        - **What might be the benefits of using this process?**

        Handover to Fx1 for reflections and close
      MD
    end

    producer do
      chat <<~CHAT
        Thinking about the process you just used:

        - What did you notice about moving from outcome to intention?
        - What did you notice about moving from intention to impact?
      CHAT
    end
  end

  block(name: "Reflect on learning in this session", lead_by: :fx1) do
    length 6
    section_comment "Gather comments in chat and pick out some examples"

    facilitator do
      spoken "We are at the end of this module and the core Better Conversations course. We’d like you to reflect on what you have learned. Here are some questions to guide your thinking."
      spoken "Please put in the chat:"
      spoken_exact "What do you know now about Better Conversations?"
      spoken_exact "What difference does that make?"
      spoken_exact "What’s one thing you might do differently now you know this?"
      spoken "There is space in the Course Handbook to capture any more thoughts you might have from today."
    end

    producer do
      chat <<~CHAT
        - What do you know now about Better Conversations?
        - What difference does that make?
        - What’s one thing you might do differently now you know this?
      CHAT
    end

  end

  block(name: "Closing", lead_by: :fx1) do
    length 2

    facilitator do
      spoken "There’s no fieldwork for this module, however you can practice preparing for intentional conversations using the guidance in the handbook."

      spoken "There's a link in the chat to the Better Conversations Community - please do visit it if you haven't already. We are here to help!"

      spoken <<~MD
        Our sixth and final module on Applications will:

         - Consolidate Modules 1-5
         - Discuss next steps for you and how we can support you
      MD

      spoken "If you have any further questions or anything you’d like to share, we will stay on the Zoom call for a few minutes after the session finished."

      instruction "Handover to Sponsor"
    end

    producer do
      chat <<~CHAT
        Please visit our community [Better Conversations Community](https://community.betterconversations.foundation/) and join the conversations there. We're here to help!
      CHAT

      instruction "If leaving the session early, make facilitator a host first."
    end

  end

  instruction_ends

  block(BCF::FlightPlans::CommonBlocks::SPONSOR_CLOSE)
  block(BCF::FlightPlans::CommonBlocks::SPONSOR_DEBRIEF)
end
