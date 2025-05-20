# These are common resources you can use in the flight plans

module BCF
  module FlightPlans
    module CommonResources
# ================================================================
# Fieldwork
# ================================================================
# Fieldwork is an array of points to be covered in the fieldwork
# Here's how you refer to them for module 3
#     BCF::FlightPlans::CommonResources::FIELDWORK[3],

FIELDWORK = []

FIELDWORK[1] = [
  "Notice your state, and how and when it changes for  you.",
  "Try mapping it to the Traffic Light Model.",
  "What’s your state like, before and after your conversations?"
]


FIELDWORK[2] = [
  "Try noticing what you are seeing or hearing when you are interacting with someone.",
  "What assumptions are you making in your interactions?",
  "Are your assumptions accurate?"
]

FIELDWORK[3] = [
  "Try noticing what context you bring to a conversation",
  "What do you know about the other person’s context?",
  "What impact does that have on the conversation?"

]

FIELDWORK[4] = [
  "Try out some of the questions in Section 4 of the handbook in your conversations",
  "What kind of listening do you do in a conversation?",
  "What impact does that have on the conversation?"
]

FIELDWORK[5] = [
  "Something here",
  "And something more"
]

FIELDWORK[6] = [
  "Something here",
  "And something more"
]

    end
  end
end
