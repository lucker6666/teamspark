# access control
Meteor.startup ->
  isTeamOwner = (userId, teams) ->
    _.all teams, (team) -> team.authorId is userId

  hasTeam = (userId, items) ->
    return true
