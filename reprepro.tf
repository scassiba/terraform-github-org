module "reprepro" {
  source         = "modules/repository"
  name           = "reprepro"
  cookbook_team  = "${github_team.reprepro_team.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "reprepro_team" {
  name        = "reprepro"
  description = "reprepro Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "reprepro-maintainer-1" {
  team_id  = "${github_team.reprepro_team.id}"
  username = "tas50"
  role     = "maintainer"
}
