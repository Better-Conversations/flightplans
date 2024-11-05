require 'bcf/flightplans'
require_relative './common_blocks'
require_relative './common_resources'

# This is from Version 2.2.3 in Box

MODULE_2 = BCF::FlightPlans::ConventionalFlightPlan.build do
  module_title "Assumptions"
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

  instruction_starts

  block(name: "Welcome", lead_by: :fx1) do
    length 2

    resources do
      # TODO Flipcharts should link to an image of the initial flipchart, in this repository, and
      # if useful examples of completed ones, and even ones at different stages of the flow

      flipchart(
        :flip_1,
        scribed_by: :fx1,
        description: "Course outline and agenda",
        comments: "Free text for any notes"
      )
    end

    facilitator do
      instruction "Welcome people and introduce facilitator(s), producer and any observers and briefly explain their roles."
      spoken "You will need a pen and paper today, so if you need to grab those, you can do it now."

      instruction "Point out this where this module is on the course overview on the flip."

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
      spoken "You can describe behaviour in a conversation using a simple stimulus-response model."
      spoken "Think of it as a snapshot of what's happening for someone in a conversation."

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

      spoken "We are going to look at assumptions first and then how feelings can influence assumptions."
      instruction "Handover to Fx2 for the assumptions demo."
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

      instruction "Facilitator to group:"
      spoken "Think about what happened for the rest of you when you heard [Producer/Co-facilitator] say that?"
      spoken "What are you imagining about that plant? What are you assuming about that plant?"
      spoken "Whatever you’re thinking or imagining about that plant, draw that on your paper, adding as much or as little detail as you’d like."

      instruction "Pause for drawing"
      spoken "Everyone, please hold up your paper to the camera so we can see what you think this plant is like."
      spoken "Now I am going to use some questions to check the assumptions I have about that plant."

      instruction "Facilitator to Producer/Co-facilitator:"
      spoken "[Producer/Co-facilitator], may I ask:"
      spoken "What kind of plant is it?"
      spoken "Whereabouts is that plant?"
      spoken "And is there anything else about that plant?"

      spoken "And now, please could you all add some more detail to your pictures and show them to the camera."

      instruction "Pause for sharing"
      spoken "What happened for you after you had more information about the plant?"
      instruction "Facilitate short discussion"

      spoken "Now let’s find out what this plant is…"

      instruction "Producer/Co-facilitator shows the plant."
      instruction "Facilitator to group:"
      spoken "How accurate was your drawing or description?"
      spoken "On a scale of 1-5, where 1 is least accurate, and 5 is super accurate, let’s see a show of fingers as to how accurate your assumptions were about [Producer/Co-facilitator]’s plant."
      instruction "Acknowledge what people score themselves at."
      instruction "Handover to Fx1 to talk about breakout on assumptions."
    end

    producer do
      instruction "Participate in demo if no co-facilitator"
    end
  end

  # TODO: Escape the in strings, Typst uses it as a control character
  block(name: "Breakout#1", lead_by: :fx1) do
    length 9

    resources do
      breakout_room(:bor_1, default_duration: 8)
    end

    # TODO: insert the parameter for length of the BOR in the spoken text to make it easier to change/less error-prone. Note the length of the block is 1-2 minutes longer than the BOR length to allow for the intro and final comments
    # TODO: make all the BOR intros and final comments into common blocks so the only thing that needs to be changed is the exercise (mainly the spoken_exacts)
    # TODO: All BOR exercises could be in a resources file to be able to easily compare them
    facilitator do
      spoken "You will have **8 minutes** to do this exercise in breakout rooms."
      spoken_exact "You will work in pairs or threes, with one person as the Chooser and the other(s) as the Asker(s).  You’re going to do what we just did."
      spoken "The exercise is going in the chat so it should travel to the breakout room with you. If you are on a mobile device, you might want to take a note of it in case you can’t see it."
      spoken_exact "The Chooser picks an object they can see but the Asker(s) can’t and says “I can see a ___” without showing the object."
      spoken_exact "The Asker(s) draws their version of the object on a piece of paper, then shows it to the Chooser."
      spoken_exact <<~MD
        The Asker(s) asks just two or three of these questions of the Chooser about the object:
        - What kind of ___?
        - Whereabouts is ___?
        - Is there anything else about ___?
      MD
      spoken_exact "The Asker(s) updates their drawings based on the Chooser’s answers, then shows them to the Chooser again."
      spoken_exact "The Chooser reveals the object and compares it with the Asker(s)’ drawings."

      spoken "Manage the time so everyone gets a chance to ask the questions"
      spoken "Remember – this not about guessing the object, it’s about assumptions!"
      spoken "When you come back, we’ll find out what you noticed about making assumptions."
      spoken "Any questions before we send you in?"

    end

    producer do
      instruction "Copy this to chat when you hear the facilitator introduce the questions:"

      # TODO: Add support for messages that are supposed to be copied piecemeal.
      # TODO: Sort out indentation of bullets and numbering
      chat <<~CHAT
        Work in pairs or threes, with one person as the Chooser and the other(s) as the Asker(s).

        1. The Chooser picks an object they can see but the Asker(s) can’t and says “I can see a ___” without showing the object.

        2. The Asker(s) draws their version of the object on a piece of paper, then shows it to the Chooser.

        3. The Asker(s) asks just two or three of these questions of the Chooser about the object:

            - What kind of ___?
            - Whereabouts is ___?
            - Is there anything else about ___?

        4. The Asker(s) updates their drawings based on the Chooser’s answers, then shows them to the Chooser again.

        5. The Chooser reveals the object and compares it with the Asker(s)’ drawings.

        Manage the time so everyone gets a chance to ask the questions.

      CHAT

      instruction "When the facilitator has finished giving the instructions/answering questions." \
                    "Tell the group you are going to send them into BORs for 8 minutes"

      instruction "Send into BORs"
      instruction "Broadcast halfway message:"

      # TODO: Parameterize the time of a breakout room at runtime
      broadcast "Halfway, 4 minutes remaining"
    end
  end

  block(name: "Unpack Breakout activity", lead_by: :fx1) do
    length 7
    section_comment "Fx2 scribes"

    resources do
      flipchart(
        :flip_3,
        "Add to Flip#3 for up to 3 people and/or use chat.",
        description: "Learnings on assumptions",
        scribed_by: :fx2)

      breakout_room(:bor_1)
    end

    facilitator do
      spoken "Let’s find out what you discovered:"
      spoken_exact "What did you notice about making assumptions in that activity?"
      spoken_exact "What impact might making assumptions have on your conversations?"
      spoken "Who’s got something they want to share?"

      instruction "Facilitate brief discussion suggesting people can also put their answers in the chat." \
                    "Aim for 2-3 examples, with one from the chat."
        
      instruction "Handover to Fx1 for disucssion on assumptions and feelings."
    end

    producer do
      instruction "Prepare BORs in same 2/3s for 6 minutes"

      chat <<~CHAT
        What did you notice about making assumptions in that activity? \
        What impact might making assumptions have on your conversations?
      CHAT
    end
  end

  block(name: "Recap model", lead_by: :fx1) do
    length 3

    resources do
      flipchart(
        :flip_2,
        "",
        description: "Use assumptions diagram to explain how feelings are represented by the model",
        scribed_by: :fx1
      )
    end

    facilitator do
      spoken "The reason we do this exercise is to show how easily and quickly we make assumptions. They may be right or wrong. They can change when we have new information."
      spoken "We can easily verify whether we are right or wrong talking about a physical object."
      spoken "It’s harder with abstract concepts like trust, fairness, justice and so on – this is where many misunderstanding occur between people."
      spoken "The questions we suggested: What kind of? Whereabouts? Anything else? are useful to test assumptions."
      spoken "Let’s now think about how our feelings affect our assumptions."
      instruction "Point to the middle step on the assumptions model"
      spoken "By feelings, I also mean sensations, emotions, and mood."
      spoken "Our thinking processes are entwined with our feelings – we could say our thoughts are always coloured by our feelings."
      spoken "This is why we use the traffic light model - red/amber(yellow)/green - on the middle step which is “I think/feel”"
      instruction "Shade the “I think/feel step” on the diagram with red/orange/green pens (or use red/yellow/green Post-its or transparent sheets) to show what you mean."
      spoken "Different emotions or feelings can affect our thinking differently."
      spoken "For example, when we are in red, we might be more likely to perceive threat and act quickly."
      spoken "When in green, we may be more creative in our thinking."
      instruction "Handover to Fx2 to talk about assumptions and feelings breakout activity."
    end
  end
  block(name: "Breakout#2", lead_by: :fx2) do
    length 7

    resources do
      breakout_room(:bor_2, default_duration: 6)
    end

    facilitator do
      spoken "We are going to put you in breakouts again for 6 minutes to talk about assumptions and feelings."
      spoken_exact "At the beginning of the module, we asked you to think about a conversation you had and your state around that conversation. You can talk about a different conversation if you like."
      spoken_exact <<~MD
        Briefly discuss:
        - What your state was during that conversation.
        - What you might have been assuming in that conversation.
        - How your feelings related to your assumptions about the situation or person.
      MD

      spoken_exact "Share only what you are comfortable sharing in the group."
      spoken_exact "Manage the time so everyone has a chance to answer the questions."
      spoken_exact "We’ll talk about what you noticed about feelings and assumptions when you come back."
    end

    producer do
      instruction "Copy to chat when you hear the facilitator giving the instructions:"

      chat <<~CHAT
        At the beginning of the module, we asked you to think about a conversation you had and your state around that conversation. You can talk about a different conversation if you like.
        
        Briefly discuss with each other:
        - What your state was during that conversation.
        - What you might have been assuming in that conversation.
        - How your feelings related to your assumptions about the situation or person.

        Manage the time so everyone has a chance to answer the questions.
        
      CHAT

      instruction "When the facilitator has finished talking tell the group you are going to send them into BORs for 6 minutes"
      instruction "Send into BORs"
      instruction "Broadcast halfway message:"
      broadcast "Halfway, 3 minutes remaining"
    end
  end

  block(name: "Unpack Breakout#2 activity", lead_by: :fx2) do
    length 5
    section_comment "Fx1 scribes"

    resources do
      flipchart(
        :flip_4,
        "Add to Flip#4 for up to 3 people and/or use chat.",
        description: "Learnings on state and assumptions",
        scribed_by: :fx1
      )
      breakout_room(:bor_2)
    end

    facilitator do
      spoken_exact "What did you notice about feelings and assumptions?"
      spoken "Who's got something they want to share?"
      instruction "Facilitate brief discussion suggesting people can also put their answers in the chat. Aim for 2-3 examples, with one from the chat."
      instruction "Handover to Fx2 for reflection, fieldwork and close."
    end

    producer do
      instruction "Copy in chat (when you hear facilitator say this):"

      chat <<~CHAT
        What did you notice about feelings and assumptions?
      CHAT
    end
  end

  block(name: "Reflect on the learning in this session", lead_by: :fx1) do
    length 5

    section_comment "Gather comments in chat and pick out some examples"

    facilitator do
      spoken "We’re nearly at the end of the session, so let’s reflect on what you know now. "
      spoken "Here are some questions to guide your thinking."
      spoken "Please put your answers in the chat."
      spoken_exact <<~MD
        Thinking about the conversations you are going to have in the next week, and what we have just learned on this module, please put in the chat
        -	What you know now about having better conversations
        -	Is there something you may do differently now you know this?
      MD
      instruction "Use chat to gather comments. If time permits, invite examples from 1-2 people."
      spoken "There is space in the Course Handbook to capture any more thoughts you might have from today."
    end

    producer do
      chat <<~CHAT
        Thinking about the conversations you are going to have in the next week, and what we have just learned on this module:
        - What do you know now about having better conversations?
        - Is there something you may do differently now you know this?
      CHAT
    end
  end

  block(BCF::FlightPlans::CommonBlocks::Fieldwork.new(
    BCF::FlightPlans::CommonResources::FIELDWORK[2],
    id: :context_fieldwork,
    description: "",
    length: 2),
        lead_by: :fx1)

  # TODO: Make fx1 lead
  block(BCF::FlightPlans::CommonBlocks::CLOSING, lead_by: :Fx1)

  instruction_ends

  block(BCF::FlightPlans::CommonBlocks::SPONSOR_CLOSE)
  block(BCF::FlightPlans::CommonBlocks::SPONSOR_DEBRIEF)
end
