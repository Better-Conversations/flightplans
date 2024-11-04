require 'bcf/flightplans'
require_relative './common_blocks'
require_relative './common_resources'

# Flightplan version 2.2.3

MODULE_1 = BCF::FlightPlans::ConventionalFlightPlan.build do
  module_title "State"
  module_number 1

  learning_outcomes <<~MD
    Learners will be able to:

    -	Explain the State Model (Traffic Light Model)
    - Describe how they know when they are in red, amber/yellow, or green state

    Suggested learning outcomes for further trainings/interventions

    - Discuss some of the causes for being in the red, amber/yelllow and green state
    - Describe their models for being at their best and worst
    - Discuss strategies for changing their state to be at their best
  MD

  demo <<~MD
    Prior to BOR1, Fx1 and Fx2 to have examples of what they are thinking and feeling in a red state (strong and unpleasant emotions). This doesn't have to be anger or fear. It could be sadness or extreme frustration.
  MD

  block(BCF::FlightPlans::CommonBlocks::PRE_FLIGHT)

  block(BCF::FlightPlans::CommonBlocks::GREETING)

  instruction_starts

  block(name: "Welcome to the course", lead_by: :fx1) do
    length 4

    resources do
      flipchart(
        :flip_1,
        "for course overview and agenda",
        description: "Course outline and agenda",
        scribed_by: :fx1
      )
    end

    facilitator do
      instruction <<~MD
        Welcome people and introduce facilitator(s), producer and any observers and briefly explain their roles.

        Explain that the course attendees are invited to learn any of these roles too, by working with the Foundation.
      MD
      spoken "There are some contact details going in the chat if you need to get in touch. These are also in the Course Handbook"

      spoken "Does everyone have experience with Zoom?"
      
      instruction "Adjust response as necessary."

      spoken "You can use translated captions to follow us more easily. Turn this on from the options at the bottom of your Zoom window. You may see a box pop-up on your screen to enter your spoken language if someone turns this on."

      spoken "The producer is on hand to help with any technical issues."

      spoken "We will be using the flipcharts and chat facility during this course. You don't need to be able to read everything on the flipcharts, but you can pin my Zoom window if you'd like to see more."

      spoken "Let's try the chat facility out:"

      spoken_exact "Please let us know where you are in the world by typing in chat."

      instruction "Facilitators and Observers type where they are in the chat."

      # TODO: Spoken <<-MD Doesnt add a bullet point every new line however adds different styling to bullet points put in
      spoken <<~MD
        We also ask that everyone respect confidentiality of what is shared by the group this course, to allow people to fully engage with the learning.
      MD

      instruction "Go through the course overview on flip"

      spoken <<~MD
        There are 5 core modules in this course: State, Assumptions, Context, Listening with Curiosity and Intentional Conversations.

        The sixth module will consolidate the learning and explore what you would like to do next.

        Please do also book in with us for an individual session around modules 5 or 6 to discuss next steps and how we can support you.

        We will be following the same pattern of activities each time
      MD

      instruction "Facilitator quickly goes through the agenda points on flip"

      spoken "Today, we are going to explore what we call ‘state’, State is what you might be thinking or feeling at any moment. Being more aware of our state can help us have Better Conversations."
    end

    producer do
      instruction "Copy to chat when you hear facilitator mention contact details:"

      chat <<~CHAT
        email:help@betterconversations.foundation

        phone: +44 118 234 9811
      CHAT

      instruction "Copy to chat when the facilitator mentions location"

      chat <<~CHAT
        Where are you in the world (country, region, building/room)?
      CHAT

      instruction "Give example of where you are when facilitator mentions where they are."
    end
  end

  block(BCF::FlightPlans::CommonBlocks::ANY_QUESTIONS)

  block(name: "State Check-in", lead_by: :fx2) do
    length 4
    section_comment "Gather comments in chat"

    facilitator do
      instruction "Lead check-in at a slower pace"

      spoken "Before we get into the content, take a moment to check in with yourself and find out what you notice"
      spoken "There’s no need to say anything out aloud – just place your attention on yourself and notice any thoughts or feelings, emotions, or sensations you have in this moment."

      instruction "Pause to let people settle"

      spoken_exact "On a scale of 0-10: 0 is not ok at all, 10 is wonderful, please put into the chat how you are feeling"

      spoken "We will come back to this rating scale later in the session"

      instruction "Accept whatever is put in chat. If people are 0-4 then ask them to take the time they need, switch their camera off and mute and join when they are ready."

    end

    producer do
      instruction "Copy to chat when facilitator mentions scale for check-in"

      chat <<~CHAT
        How are you feeling?

        0 – not OK at all, 10 – wonderful.
      CHAT

      instruction "Take note of the numbers to decide BOR participants – avoid people with low scores in the same room
      "

    end

  end

  block(name: "Motivation for being on the course", lead_by: :fx2) do
    length 5
    section_comment "Gather comments in chat"

    facilitator do
      spoken " In the chat, let's hear from you all in a few words..."

      spoken_exact "What brings you to be on this course?"

      instruction "Pick out 1-2 examples from chat or allow people to speak. Acknowledge what they say."
    end

    producer do

      chat <<~CHAT
        What brings you to be on this course?
      CHAT

    end

  end

  block(name: "Learning Outcomes", lead_by: :fx2) do
    length 5
    section_comment "Gather comments in chat"

    facilitator do
      spoken "And now let's think about outcomes from this course. Please take a moment to think about:"
      spoken_exact "What kind of conversation would you like to be better after this course?"

      instruction "Pause"

      spoken "In the chat give a label to these conversations."
      spoken "It might be something like 'neighbour' or 'colleague'. A word that will help you remember these conversations."
      instruction "Pause"
      spoken "Now give us a number to show how these conversations are going for you on a scale of 0-10. 0 terrible and 10 brilliant."

      instruction "Pick out 1-2 examples from chat or allow people to speak. Acknowledge what they say."

      spoken "Make a note of this label and number if it helps you. There's also a space in the handbook to write this down."

      instruction "Hand over to Fx1 for State and Traffic Light model"
    end

    producer do
      instruction "Copy to chat as facilitator mentions this:"

      chat <<~CHAT
        What kind of conversation would you like to be better after this course? Give a label to these conversations.
        e.g. neighbour
      CHAT

      chat <<~CHAT
        How are these conversations are going for you? Give us a number on a scale of 0-10.

        (0 – terrible, 10 – brilliant).
      CHAT
    end

  end

  block(name: "Traffic Light Model", lead_by: :fx1) do
    length 5
    section_comment "Scribed by fx1"
    resources do
      flipchart(
        :flip_2,
        "to explain the model",
        description: "Traffic Light Model on LHS, Space for findings on RHS",
        scribed_by: :fx1
      )
    end

    # TODO: When Handbook goes on website, check talking about the space in the handbook is still relevant in all flight plans
    facilitator do
      spoken "Now for the traffic light model which is an easy way to represent state. There is also an explanation in the Course Handbook in Section 1 to help you remember the model."
      spoken "We have an inverted traffic light here. The colours represent different states of our thinking and feeling, which will impact our conversations. Green is at the top as usually we have better conversations when in a green state."
      spoken "It’s important to know that being in an amber/yellow or red state isn’t ‘bad’, it’s your system or body trying to tell you something. No one state is better than another, they can be less helpful or resourceful depending on the situation you’re in."
      spoken "Green light state is “I’m good to go”, 7-10 from the scale we used earlier.  You’re feeling good and connected with yourself and others and engaged with the world. All your needs are met, and you’ll be thinking and acting at your best."
      spoken "Amber/yellow light state is “proceed with caution”, 4-7. You are not completely OK. You may be unsure about the social rules, or the people you are with. You may be concerned for someone else’s welfare."
      spoken "Red light is “stop and take a break”, 0-4. You are definitely not OK. You will be experiencing strong and unpleasant emotions. You may have a fight/flight/freeze response. Some of your basic needs will not be met, and there may be a threat to life."
    end

  end

  # TODO: Add scribed by section to block as well
  block(name: "Demonstrate Breakout exercises", lead_by: :fx1) do
    length 5
    section_comment "Add to Flip#2 in the red state section for up to 3 people"

    facilitator do
      spoken "Let’s get some examples of how you experience these three different states."
      spoken "We’ll do red together as a whole group first."
      spoken "We are going to find out what happens when you are at about a 3 or 4 on that scale of 0-10 we had earlier when we did our check-in. We don’t want to bring up very strong emotions or memories in this forum."
      spoken "I’ve got an example. When I am in red, I think___, I feel___."

      instruction "Ask co-facilitator for their example"

      spoken "[Co-facilitator] When I am in red, I think___, I feel ___. "

      # TODO: move this instruction to beforeco-facilitator asked.
      instruction "Share example drawing attention to strong and unpleasant thoughts and feelings – remember this doesn’t have to be about anger or fear."

      instruction "To group"

      spoken_exact "What might you be thinking or feeling that lets you know you’re in this red state?"

      spoken "Let’s get 2-3 examples. Who’s got something they’d like to share?"

      instruction <<~MD
        Remember to write on the flipchart

        Help them by asking questions about what they are thinking or feeling if they can’t identify thinking or feeling. Can also ask “How do you know you are in a red state?”

        Suggest people can also put their answers in the chat.

        If time only, ask the whole group:
      MD

      spoken "What are you noticing about these experiences?"

      instruction "Handover to Fx2 for BOR1 on green state"
    end

    producer do
      instruction "Prepare BORs in 2/3s for 5 minutes if not already done"

      instruction "Copy to chat when facilitator mentions this: "

      chat <<~CHAT
        What might you be thinking or feeling that lets you know you’re in a red state?
      CHAT
    end

  end

  block(name: "Breakout 1", lead_by: :fx2) do
    length 6
    section_comment "1 Minute briefing, 5 minutes in BORs"

    resources do
      breakout_room(:bor_1, default_duration: 5, notify_halfway: true, halfway_message: true)
    end

    facilitator do
      spoken "We are going to send you into breakout rooms for 5 minutes."
      spoken "Like we did for the red state, discuss what you might be thinking or feeling in a green state."
      spoken "Keep it brief so everyone gets a chance to talk."
      spoken "We want you all to feel safe and keep things appropriate. As we don’t know each other that well we’d like you to only share what you are comfortable sharing in the group."
      spoken "The question is going in the chat so it should travel to the breakout room with you. If you are on a mobile device, you might want to take a note of it in case you can’t see it."
      spoken "We’ll then come back and find out what you noticed about being in a green state."
      spoken "Any questions before we send you in?"
    end

    producer do
      instruction "Copy to chat when facilitator mentions this: "

      chat <<~CHAT
        What might you be thinking or feeling when you’re in a green state?
      CHAT

      instruction <<~MD
        When the facilitator has finished talking, tell the group you are going to send them into BORs for 5 minutes

        Send into BORs

        Broadcast halfway message
      MD
    end
  end

  # TODO: Add scribed by section to block as well
  block(name: "Unpack Breakout 1 ", lead_by: :fx2) do
    length 5
    section_comment "Add to Flip#2 in green section for up to 3 people"

    facilitator do
      spoken "Welcome back. Let’s get 2-3 examples of green state."

      spoken_exact "What did you notice about being in a green state?"

      instruction "Facilitate brief discussion, helping people to say what they are thinking or feeling in a green state.  Suggest people can also put their answers in the chat."

    end

    producer do
      instruction "Copy to chat:"

      chat "What did you notice about being in a green state?"

      instruction "Prepare BORs in same 2/3s for 4 minutes "

    end

  end

  block(name: "Breakout 2", lead_by: :fx2) do
    length 5
    section_comment "1 Minute breifing, 4 minutes in BORs"

    resources do
      breakout_room(:bor_2, default_duration: 4, notify_halfway: true, halfway_message: true)
    end

    facilitator do
      spoken "Now we are going to do the same for amber/yellow"
      spoken "This time, come back with examples of being in amber/yellow states that you are happy to share in the wider group. You’ll have 4 minutes this time."
      spoken "We’ll put the question in the chat again…"
    end

    producer do
      instruction " Copy to chat"

      chat " What might you be thinking or feeling when you’re in an amber/yellow state? "

      instruction <<~MD
        When the facilitator has finished talking, tell the group you are going to send them into BORs for 4 minutes

        Send into BORs

        Broadcast halfway message:
      MD
    end

  end

  block(name: "Unpack Breakout 2", lead_by: :fx2) do
    length 5
    section_comment " Fx1 Scribes

    Add to Flip 2 in amber section for up to 3 people"

    # TODO: Add scribed by section to block as well as allowing for discription without flipchart page
    facilitator do
      spoken "Now let’s get 2-3 examples of amber/yellow state"

      spoken_exact "What did you notice about being in an amber/yellow state?"

      instruction <<~MD
        Facilitate brief discussion, helping people to say what they are thinking or feeling in an amber/yellow state.  Suggest people can also put their answers in the chat.

        If time allows, focus in on the transition between amber/yellow and other states and the reasons for that.

        Handover to Fx1 for reflection, fieldwork and close
      MD

    end

    producer do
      instruction "Copy to chat: "

      chat "What did you notice about being in an amber/yellow state?"
    end

  end

  block(name: "Reflect on learning in this session", lead_by: :fx1) do
    length 5
    section_comment "Gather comments in chat"

    facilitator do
      spoken "You’ve had some conversations and learned a model to describe state. This is a key ingredient in having Better Conversations."
      spoken "Take a moment now to reflect and put your thoughts in the chat. Here are some questions to guide your thinking:"

      spoken_exact "Thinking about conversations that have and haven’t gone well and what you know now about state, what are you noticing?"
      spoken_exact "What difference does this make?"
      spoken_exact "Is there something you may do differently now you know this?"

      instruction "Use chat to gather comments. If time permits, invite examples from 1-2 people."

      spoken "We are almost at the end of this first module. There is space in the Course Handbook to capture any more thoughts you might have from today. "

    end

    producer do
      instruction "Copy to chat as facilitator mentions fieldwork: "

      chat <<~CHAT
        Thinking about conversations that have and haven’t gone well and what you know now about state

        - What are you noticing?

        - What difference does this make?

        - Is there something you may do differently now you know this?

      CHAT
    end

  end

  # TODO: Check this can use the common fieldwork block and array - wording is different at start
  block(name: "Fieldwork", lead_by: :fx1) do
    length 2

    facilitator do
      spoken "We have fieldwork that is optional but very useful to consolidate what we cover in each module. We will send this out by email."
      spoken "The suggested fieldwork for this module is to:"
      spoken_exact "Notice your state, and how and when it changes for you."
      spoken_exact "Try mapping it to the Traffic Light Model."
      spoken_exact "What’s your state like, before and after your conversations?"
    end

    producer do
      instruction "Copy to chat as facilitator mentions fieldwork: "

      chat <<~CHAT
        Fieldwork:

        - Notice your state, and how and when it changes for  you.

        - Try mapping it to the Traffic Light Model.

        - What’s your state like, before and after your conversations?

      CHAT
    end

  end

  block(BCF::FlightPlans::CommonBlocks::CLOSING, lead_by: :fx1)

  instruction_ends

  block(BCF::FlightPlans::CommonBlocks::SPONSOR_CLOSE)
  block(BCF::FlightPlans::CommonBlocks::SPONSOR_DEBRIEF)
end
