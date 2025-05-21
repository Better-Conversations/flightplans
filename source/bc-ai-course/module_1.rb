require 'bcf/flightplans'
require_relative '../shared/common_blocks'
require_relative '../shared/common_resources'

BC_AI_MODULE_1 = BCF::FlightPlans::ConventionalFlightPlan.build do
  module_title "Human-AI Interaction"
  module_number 1

  learning_outcomes <<~MD
    Learners will be able to:

    -	Explain Human-AI interaction in the context of conversations with AIs

    Suggested learning outcomes for further trainings/interventions

    - Discuss the different AI models and their capabilities
  MD

  demo <<~MD
    tbc
  MD

  block(BCF::FlightPlans::CommonBlocks::PRE_FLIGHT)

  block(BCF::FlightPlans::CommonBlocks::GREETING)

  instruction_starts

  block(name: "Welcome to the course", lead_by: :fx1) do
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

        Explain that the course attendees are invited to learn any of these roles too, by working with the Foundation.
      MD

      spoken "There are some contact details going in the chat if you need to get in touch." 
        
      # TODO: "These are also in the Course Handbook"

      spoken "Does everyone have experience with Zoom?"

      instruction "Adjust response as necessary."

      spoken "You can use translated captions to follow us more easily. Turn this on from the options at the bottom of your Zoom window. You may see a box pop-up on your screen to enter your spoken language if someone turns this on."

      spoken "The producer is on hand to help with any technical issues."

      # TODO: "We will be using the flipcharts and chat facility during this course. You don't need to be able to read everything on the flipcharts, but you can pin my Zoom window if you'd like to see more."

      spoken "Let's try the chat facility out:"

      spoken_exact "Please let us know where you are in the world by typing in chat."

      instruction "Delivery team type where they are in the chat."

      # TODO: Spoken <<-MD Doesnt add a bullet point every new line however adds different styling to bullet points put in
      spoken <<~MD

        We've designed this course to be experiential. Because of that, we ask that you respect the confidentiality of what's shared in this group to allow everyone to fully engage with the learning.

      MD

      instruction "Go through the course overview on flip"

      spoken <<~MD
        This course introduces some key aspects of working with AIs. By the end of the course, you will have practical tools and strategies to prepare for and have better conversations with AIs.

        The five topics we'll cover are Human-AI interaction, Goal-setting, Oversight, Feedback and Ethical Use of AIs.

        Each module with be an hour long and we will stay on the Zoom call for 15 minutes after the session if you'd like to talk to us in depth.

        Fieldwork will be sent out by email after each module. We need you to do this to consolidate your learning and to prepare for the next module. Please do reach out to us for help with this or any other questions during the week.

        We will be using the Amphora Chat platform for this course which gives you access to a number of different AI models.

        We'll also be sending out handouts for each module to support your learning.

        Any questions about this?
      MD

      # TODO: Add the comments about the 1 hour and afterparty to the BC course.# TODO: Move the pattern of activities spoken to after the instruction in the BC course. 
      
      instruction "Facilitator quickly goes through the agenda points on flip"
      spoken "We will be following the same pattern of activities each time."
      spoken "Today, we are going to discuss Human-AI interaction. Being aware of the differences between humans and AI can help us have better conversations with AIs to steer them towards our goals."
    end

    producer do
      instruction "Copy to chat when you hear facilitator mention contact details:"

      chat <<~MD

        - email: help@betterconversations.foundation
        - phone: +44 118 234 9811
        - website: https://betterconversations.foundation

      MD

      instruction "Copy to chat when the facilitator mentions location"

      chat <<~MD
        - Where are you in the world (country, region, building/room)?
      MD

      instruction "Give example of where you are when facilitator mentions where they are."
    end
  end

  block(BCF::FlightPlans::CommonBlocks::ANY_QUESTIONS)

  block(name: "Check-in", lead_by: :fx2) do
    length 4
    section_comment "Gather comments in chat and pick out some examples"

    facilitator do

      spoken "Before we get into the content, let's check in to find out your level of comfort with using AIs."

      spoken_exact <<~MD
      
        On a scale of 0-10, where:

        - 0 is extremely uncomfortable
        - 10 is very comfortable
        
        Please put into the chat how you comfortable you are with using AIs.

      MD

      instruction <<~MD

        Accept whatever is put in chat. If people are:

        0-4: ask them to let us know whether they need us to slow down as we go and explain it differently.

        8-10: ask them to notice what is being raised, to understand some of the issues people are thinking about in relation to implementing AIs in their work.

      MD

    end

    producer do
      instruction "Copy to chat when facilitator mentions scale for check-in"

      chat <<~MD

        - How comfortable are you with using AIs?

        - Please give us a number between 0 (extremely uncomfortable) and 10 (very comfortable)

      MD

      instruction "Take note of the numbers to decide BOR participants [tbc whether to avoid people with low scores in the same room]"
    end

  end

  block(name: "Motivation for being on the course", lead_by: :fx2) do
    length 5
    section_comment "Gather comments in chat and pick out some examples"

    facilitator do
      spoken "Let's hear from you all in the chat..."

      spoken_exact <<~MD
        - What brings you to be on this course?
        - What are you hoping to get out of this course?
      MD

      instruction "Pick out 1-2 examples from chat and ask people to expand on them. Acknowledge what they say."

      handover "for Amphora Chat platform"
      
    end

    producer do

      chat <<~MD
        - What brings you to be on this course?
        - What are you hoping to get out of this course?
      MD
    
      instruction "Prepare BORs in 2/3s for 5 minutes if not already done"
    end

  end

  block(name: "Amphora Chat platform", lead_by: :fx1) do
    length 8
    resources do
      flipchart(
        :flip_2,
        comment: "Use flip to help explain the platform",
        description: "tbc",
        scribed_by: :fx1
      )
    end

    # TODO: When Handbook goes on website, check talking about the space in the handbook is still relevant in all flight plans
  
    facilitator do
      spoken "We are going to demo the Amphora Chat platform now."

      instruction "Demo the platform (Facilitator describes and Producer drives?)"

      instruction <<~MD
        - Show how to navigate the platform
        - Explain this is set up as a basic model for this session
        - Explain that we will be using the platform for the rest of the course including for doing the fieldwork
        - Confirm we can see their messages on the platform so they should not enter any sensitive or confidential information on the platform
      MD
      spoken "We'll be on hand to help. Any questions on using the platform?"
      
    end

    producer do
      instruction "Help the facilitator demo the platform"
    end
  end


  block(name: "Breakout 1", lead_by: :fx2) do
    length 6
    section_comment "(1 min briefing)"

    resources do
      breakout_room(:bor_1, default_duration: 5, notify_halfway: true, halfway_message: true)
    end

    facilitator do
      spoken "We are going to send you into breakout rooms for 5 minutes."
      spoken_exact <<~MD
        - Try typing this prompt into the Amphora Chat platform:
        - Why is the sky blue?
        - You can also try out other prompts to get used to the platform.
        - If you run into any issues, message us in the Zoom chat and we can help you.
      MD

      spoken "Any questions before we send you in?"
    end

    producer do
      instruction "Copy to chat when facilitator mentions this: "

      chat <<~MD
        Try typing this prompt into the Amphora Chat platform: 
        
        *Why is the sky blue?*

        You can also try out other prompts to get used to the platform. 
        
        If you run into any issues, message us in the Zoom chat and we can help you.
      MD

      instruction "When the facilitator has finished talking, tell the group you are going to send them into BORs for 5 minutes"

      send_into_bor(:bor_1)
    end
  end

  block(name: "Unpack Breakout 1 ", lead_by: :fx2) do
    length 5
    resources do
      flipchart(
        :flip_2,
        comment: "Summarise responses on flip, using people's words",
        description: "Observations on Amphora Chat platform",
        scribed_by: :fx1
      )
    end

    facilitator do
      spoken "Welcome back"

      spoken_exact <<~MD
        - What did you notice about the Amphora Chat platform?
        - Any questions about the platform?
      MD

      instruction "Facilitate brief discussion suggesting people can also put their answers in the chat. Aim for 2-3 examples, with one from the chat."
    end

    producer do
      instruction "Copy to chat:"

      chat <<~MD
        - What did you notice about the Amphora Chat platform?
        - Any questions about the platform?
      MD

      instruction "Prepare BORs in same 2/3s for 4 minutes "

    end

  end

  block(name: "Breakout 2", lead_by: :fx2) do
    length 7
    section_comment "(1 min briefing)"

    resources do
      breakout_room(:bor_2, default_duration: 6, notify_halfway: true, halfway_message: true)
    end

    facilitator do
      spoken "We are going to do a bit more with the AI model we just used. We are going to explore introducing more context into our AI conversation, and asking it to clarify how it knows things."
      
      spoken_exact <<~MD
        Enter these prompts this time, and allow the AI to respond between each prompt (you need to repeat the first prompt)

          1. Why is the sky blue?
          2. If you were a poet, how would you answer this?
          3. As an AI, how do you really know that the sky is blue?

        What do you notice about the responses?
      MD

      spoken <<~MD
        - Any questions before we send you in?
      MD
    end

    producer do
      instruction "Copy to chat"

      chat <<~MD
        Enter these prompts this time, and allow the AI to respond between each prompt (you need to repeat the first prompt)

        1. Why is the sky blue?
        2. If you were a poet, how would you answer this?
        3. As an AI, how do you really know that the sky is blue?

        What do you notice about the responses?
      MD

      instruction "When the facilitator has finished talking, tell the group you are going to send them into BORs for 4 minutes"
      send_into_bor :bor_2
    end
  end

  block(name: "Unpack Breakout 2", lead_by: :fx2) do
    length 5
    resources do
      flipchart(
        :flip_2,
        comment: "Summarise responses on flip, using people's words",
        description: "Observations from Breakout 2",
        scribed_by: :fx1
      )
    end

    facilitator do
      spoken "Now let's find out what you noticed about your AI conversations"

      spoken_exact <<~MD
        - What did you notice about the AI's responses?
        - Did you notice any differences in the responses as you went along?
      MD

      instruction <<~MD
        Facilitate brief discussion, helping people to say what they are thinking or feeling in an amber/yellow state. Suggest people can also put their answers in the chat.

        If time allows, focus on the differences in the responses and whether each person got the same or different responses (invite them to paste the poems in the chat).
      MD

      handover "for reflections, fieldwork and close"
    end

    producer do
      instruction "Copy to chat: "

      chat <<~MD
        - What did you notice about the AI's responses?
        - Did you notice any differences in the responses as you went along?
      MD
    end
  end

  block(name: "Reflect on learning in this session", lead_by: :fx1) do
    length 5
    section_comment "Gather comments in chat and pick out some examples"

    facilitator do
      spoken "You've had a quick introduction to the Amphora Chat platform and a chance to see how an AI model can respond to different prompts."
      spoken "Take a moment now to reflect and put your thoughts in the chat. Here are some questions to guide your thinking:"

      spoken_exact <<~MD
        - Thinking about conversations with AI, what are you noticing?
        - Is there something you may do differently now you know this?
        - What questions do you have about the platform or the AI you used?
      MD

      instruction <<~MD
        - Invite people to put their thoughts in the chat.
        - If time permits, invite examples from 1-2 people.
        - If time permits, answer the simple questions if you can, or suggest that they will be answered as the course progresses, or that the delivery team will follow up.
      MD
      
      #TODO: There is space in the Course Handbook to capture any more thoughts you might have from today. "
    end

    producer do
      instruction "Copy to chat as facilitator mentions the reflection questions."

      chat <<~MD
        - Thinking about conversations with AI, what are you noticing?
        - Is there something you may do differently now you know this?
        - What questions do you have about the platform or the AI you used?
      MD
    end

  end

  # TODO: Check this can use the common fieldwork block and array - wording is different at start
  block(name: "Fieldwork", lead_by: :fx1) do
    length 2

    facilitator do
      spoken "We have fieldwork that consolidates what we cover in each module and prepares you for the next module. We will send this out by email."
      spoken "The suggested fieldwork for this module is to:"
      spoken_exact <<~MD
        - Use the Amphora Chat platform to have a conversation with an AI. you'll be able to try out different models and prompts.
        - Vary the information you give the AI to see how it responds e.g. suggest it answers in a different persona or style.
        - Ask the AI to explain how it knows things, or to clarify how it arrived at an answer.
      MD
    end

    producer do
      instruction "Copy to chat as facilitator mentions fieldwork: "

      chat <<~MD
        - Fieldwork:

        - Use the Amphora Chat platform to have a conversation with an AI. you'll be able to try out different models and prompts.
        - Vary the information you give the AI to see how it responds e.g. suggest it answers in a different persona or style.
        - Ask the AI to explain how it knows things, or to clarify how it arrived at an answer.
      MD
    end
  end

  block(BCF::FlightPlans::CommonBlocks::Closing.new(:fx1, "Goal-setting with AIs", length: 1))

  # Padding to make the validation work temporarily
  block(name: "Padding", lead_by: :fx1) do
    length 5
  end
  instruction_ends

  block(BCF::FlightPlans::CommonBlocks::SPONSOR_CLOSE)
  block(BCF::FlightPlans::CommonBlocks::SPONSOR_DEBRIEF)

end
