import
  \./link : {link}
  \./profile-screen : profile-screen

create = type: \create

updaters =
  create: ({input}) -> name: input
  \input-name : (, payload) -> input: payload

function profile-state {profile}
  name: profile.name
  birthday: profile.birthday
  satisfaction: profile.satisfaction

function input-name target: {value}
  type: \input-name payload: value

Profile = link profile-screen, profile-state

export {profile-state, Profile, updaters, input-name, create}
