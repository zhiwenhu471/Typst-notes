#import "@preview/ourchat:0.2.2" as oc
#import oc.themes: *

#{
  set text(
    font: "Cafenty",
    25pt
  )
  
  align(center)[This is a custom font for our chat 
  messages!]
}

#set text(
  font: "gg sans",
)

#let alice = wechat.user(name: [Alice], avatar: circle(fill: blue, text(white)[A]))
#let bob = wechat.user(name: [Bob], avatar: circle(fill: green, text(white)[B]))

#wechat.chat(
  oc.time[Today 17:15],

  oc.message(left, alice)[
    Hey! How's the new project going?
  ],

  oc.message(right, bob)[
    Great! Just finished the API integration.
    The performance improvements are impressive! 🚀
  ],
)

#let user1 = wechat.user(name: [Alice], avatar: circle(fill: blue, text(white)[A]))
#let user2 = wechat.user(name: [Bob], avatar: circle(fill: green, text(white)[B]))

#wechat.chat(
  theme: "dark",  // or "light"
  layout: (
    bubble-radius: 8pt,
  ),
  width: 400pt,

  oc.time[Monday 9:00 AM],
  oc.message(left, user1)[Hello world!],
  oc.message(right, user2)[Hi there! 👋],
)

#set text(font: ("gg sans", "IBM Plex Sans"))

#let developer = discord.user(
  name: [Dev],
  avatar: circle(fill: purple, text(white)[D])
)
#let admin = discord.user(
  name: [Admin],
  avatar: circle(fill: red, text(white)[A])
)

#discord.chat(
  oc.time[Today at 2:14 PM],

  oc.message(left, developer)[
```python
def optimize_query():
    return cache_strategy.redis_cluster()
```
    What do you think about this approach? @admin
  ],

  oc.message(right, admin)[
    @developer Looks good! The Redis cluster should handle the load well.
  ],
)

#let student = qqnt.user(
  name: [Student],
  avatar: circle(fill: orange, text(white)[S])
)
#let expert = qqnt.user(
  name: [Expert],
  avatar: circle(fill: teal, text(white)[E])
)

#qqnt.chat(
  theme: (
    inherit: "light",
    bubble-left: rgb("#F0F8FF"),
    bubble-right: rgb("#E8F5E8"),
    text-right: rgb("#111111"),
  ),

  oc.message(left, student)[
    Can someone explain Rust ownership?
  ],

  oc.message(right, expert)[
    Sure! Ownership prevents data races at compile time...
  ],
)

#set text(font: ("gg sans", "IBM Plex Sans"))

#let admin = oc.user(
  name: [System Admin],
  avatar: circle(fill: red.darken(20%), text(white, weight: "bold")[⚡])
)

#discord.chat(
  oc.time[Today at 3:45 PM],

  // Instead of repeating the user for each message:
  // oc.message(left, admin)[Server maintenance scheduled],
  // oc.message(left, admin)[Downtime: 30 minutes max],
  // oc.message(left, admin)[Please save your work],

  // Use with-side-user for cleaner code:
  ..oc.with-side-user(
    left,
    admin,
    oc.free-message[🚨 *URGENT: Server Maintenance Alert*],
    oc.free-message[Scheduled downtime: Tonight 11 PM - 11:30 PM],
    oc.free-message[All services will be temporarily unavailable],
    oc.free-message[Please save your work and plan accordingly],
  ),
)

#let ceo = oc.user(
  name: [Sarah Chen],
  badge: qqnt.badge(text-color: purple, bg-color: purple.transparentize(80%))[#text(stroke: 0.05em + purple)[CEO]],
  avatar: rect(
    fill: blue.darken(20%),
    radius: 4pt,
    inset: 6pt,
    text(white, weight: "bold")[SC]
  )
)

#qqnt.chat(
  oc.message(left, ceo)[
    Hi team! Ready for the quarterly review?
  ],
)

#let analyst = wechat.user(
  name: [Data Analyst],
  avatar: circle(fill: green.darken(10%), text(white)[📊])
)

#wechat.chat(
  oc.message(left, analyst)[
    Here's our performance analysis:

    #table(
      columns: (auto, auto, auto),
      [*Metric*], [*Before*], [*After*],
      [Response Time], [250ms], [120ms],
      [Throughput], [1000 RPS], [2500 RPS],
    )

    The optimization yielded 58% improvement! 📊
  ]
)

