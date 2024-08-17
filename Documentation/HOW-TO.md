

## Building a Flight Plan

TODO can all text strings be Markdown?

A flight plan has the following components which you declare when starting:

- `module_title`, a string
- `module_number`, an integer
- `learning_outcomes`, a Markdown string which will be rendered as a the learning outcomes
- `demo`, describes the demo or alternative

## Blocks

Content blocks are declared in the scope of `BCF::FlightPlans::ConventionalFlightPlan.build`.

You can declare one like this:

``` ruby
  block(name: "Greeting", lead_by: [:fx1, :fx2]) do
    length 5

    facilitator do
      instruction "Greet people as they join – this is a chance to check their audio/video"
    end

    producer do
      instruction "Setup template Breakout Room for first breakout"
    end
  end
```

Note the block has a name and a list of who leads it.

### Block Content

Block content is a block of valid Ruby code which is evaluated in the context of the block.

Within a block you can give various strings (which can be plain text or Markdown). 

We declare these as methods on the block with the intention of the content so it can be rendered in the correct way.

Within a block you can declare the following:

- `length`, an integer, the length of the block in minutes
- `facilitator`, a block for the facilitator
- `producer`, a block for the producer

For the Facilitator you can declare:

- `instruction`, a string, the instruction for the facilitator
- `spoken`, a string, the spoken content for the facilitator

For the Producer you can declare:

- `instruction`, a string, the instruction for the producer
- `chat`, a string, the chat content for the producer

Passing in `fixed: true)` to `spoken` or `instruction` will render the text highlighted.

### An example

``` ruby
    facilitator do
      spoken "Now, let’s check-in with your state using the Traffic Light Model"
      spoken("Please put in the chat if you are green, amber/yellow or red", fixed: true)
      spoken("Green – you’re good to go!
Amber/Yellow – you need to proceed with caution
Red – you need to stop, break
", 

      instruction "Accept whatever states are put in chat. Avoid saying that green state is best. If people are in red then ask them to take the time they need, switch their camera off and mute, and join when they are ready."
    end
```

### Multiple Lines

If you have multiple lines of text, you can use what Ruby calls a "here block" like this:

``` ruby
      spoken(<<~SPOKEN, fixed: true)
        Green – you’re good to go!
        Amber/Yellow – you need to proceed with caution
        Red – you need to stop, break
      SPOKEN
```

### Resources

TODO resources
TODO flipcharts

## Common Blocks 

TODO can we pass in parameters e.g. who leads a block?

The common blocks are a collection of reusable components that can be used in flight plans. They are stored in a separate file to make it easier to reuse them across multiple flight plans.

You can use them like this 

``` ruby
  block BCF::FlightPlans::CommonBlocks::PRE_FLIGHT
  block BCF::FlightPlans::CommonBlocks::SPONSOR_CLOSE
  block BCF::FlightPlans::CommonBlocks::SPONSOR_DEBRIEF
```

In addition the `BCF::FlightPlans::CommonBlocks::Fieldwork` block is a special block that is used to declare the fieldwork for a flight plan. It is used like this:

TODO documemnt this 


### Gotchas 

TODO mention not closing blocks caues class errors

' in content is an issue?