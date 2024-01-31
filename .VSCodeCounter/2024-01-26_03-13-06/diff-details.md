# Diff Details

Date : 2024-01-26 03:13:06

Directory /workspaces/RiseNote/app

Total : 48 files,  617 codes, 0 comments, 173 blanks, all 790 lines

[Summary](results.md) / [Details](details.md) / [Diff Summary](diff.md) / Diff Details

## Files
| filename | language | code | comment | blank | total |
| :--- | :--- | ---: | ---: | ---: | ---: |
| [app/channels/application_cable/channel.rb](/app/channels/application_cable/channel.rb) | Ruby | 4 | 0 | 1 | 5 |
| [app/channels/application_cable/connection.rb](/app/channels/application_cable/connection.rb) | Ruby | 4 | 0 | 1 | 5 |
| [app/controllers/application_controller.rb](/app/controllers/application_controller.rb) | Ruby | 20 | 0 | 6 | 26 |
| [app/controllers/folders_controller.rb](/app/controllers/folders_controller.rb) | Ruby | 50 | 0 | 10 | 60 |
| [app/controllers/hello_controller.rb](/app/controllers/hello_controller.rb) | Ruby | 4 | 0 | 1 | 5 |
| [app/controllers/home_controller.rb](/app/controllers/home_controller.rb) | Ruby | 4 | 0 | 1 | 5 |
| [app/controllers/learning_records_controller.rb](/app/controllers/learning_records_controller.rb) | Ruby | 14 | 0 | 3 | 17 |
| [app/controllers/memos_controller.rb](/app/controllers/memos_controller.rb) | Ruby | 64 | 0 | 17 | 81 |
| [app/controllers/missions_controller.rb](/app/controllers/missions_controller.rb) | Ruby | 7 | 0 | 1 | 8 |
| [app/controllers/posts_controller.rb](/app/controllers/posts_controller.rb) | Ruby | 32 | 0 | 9 | 41 |
| [app/controllers/static_pages_controller.rb](/app/controllers/static_pages_controller.rb) | Ruby | 8 | 0 | 3 | 11 |
| [app/controllers/tags_controller.rb](/app/controllers/tags_controller.rb) | Ruby | 30 | 0 | 6 | 36 |
| [app/controllers/users/confirmations_controller.rb](/app/controllers/users/confirmations_controller.rb) | Ruby | 24 | 0 | 7 | 31 |
| [app/controllers/users/omniauth_callbacks_controller.rb](/app/controllers/users/omniauth_callbacks_controller.rb) | Ruby | 23 | 0 | 8 | 31 |
| [app/controllers/users/passwords_controller.rb](/app/controllers/users/passwords_controller.rb) | Ruby | 27 | 0 | 8 | 35 |
| [app/controllers/users/registrations_controller.rb](/app/controllers/users/registrations_controller.rb) | Ruby | 56 | 0 | 15 | 71 |
| [app/controllers/users/sessions_controller.rb](/app/controllers/users/sessions_controller.rb) | Ruby | 26 | 0 | 8 | 34 |
| [app/controllers/users/unlocks_controller.rb](/app/controllers/users/unlocks_controller.rb) | Ruby | 24 | 0 | 7 | 31 |
| [app/controllers/users_controller.rb](/app/controllers/users_controller.rb) | Ruby | 21 | 0 | 7 | 28 |
| [app/helpers/application_helper.rb](/app/helpers/application_helper.rb) | Ruby | 2 | 0 | 1 | 3 |
| [app/helpers/folders_helper.rb](/app/helpers/folders_helper.rb) | Ruby | 2 | 0 | 1 | 3 |
| [app/helpers/hello_codespaces_helper.rb](/app/helpers/hello_codespaces_helper.rb) | Ruby | 2 | 0 | 1 | 3 |
| [app/helpers/home_helper.rb](/app/helpers/home_helper.rb) | Ruby | 2 | 0 | 1 | 3 |
| [app/helpers/learning_records_helper.rb](/app/helpers/learning_records_helper.rb) | Ruby | 2 | 0 | 1 | 3 |
| [app/helpers/memos_helper.rb](/app/helpers/memos_helper.rb) | Ruby | 2 | 0 | 1 | 3 |
| [app/helpers/missions_helper.rb](/app/helpers/missions_helper.rb) | Ruby | 2 | 0 | 1 | 3 |
| [app/helpers/posts_helper.rb](/app/helpers/posts_helper.rb) | Ruby | 2 | 0 | 1 | 3 |
| [app/helpers/static_pages_helper.rb](/app/helpers/static_pages_helper.rb) | Ruby | 2 | 0 | 1 | 3 |
| [app/helpers/tags_helper.rb](/app/helpers/tags_helper.rb) | Ruby | 2 | 0 | 1 | 3 |
| [app/helpers/users_helper.rb](/app/helpers/users_helper.rb) | Ruby | 2 | 0 | 1 | 3 |
| [app/jobs/application_job.rb](/app/jobs/application_job.rb) | Ruby | 6 | 0 | 2 | 8 |
| [app/mailers/application_mailer.rb](/app/mailers/application_mailer.rb) | Ruby | 4 | 0 | 1 | 5 |
| [app/models/application_record.rb](/app/models/application_record.rb) | Ruby | 3 | 0 | 1 | 4 |
| [app/models/folder.rb](/app/models/folder.rb) | Ruby | 8 | 0 | 2 | 10 |
| [app/models/memo.rb](/app/models/memo.rb) | Ruby | 5 | 0 | 2 | 7 |
| [app/models/mission.rb](/app/models/mission.rb) | Ruby | 4 | 0 | 1 | 5 |
| [app/models/post.rb](/app/models/post.rb) | Ruby | 6 | 0 | 2 | 8 |
| [app/models/tag.rb](/app/models/tag.rb) | Ruby | 3 | 0 | 2 | 5 |
| [app/models/user.rb](/app/models/user.rb) | Ruby | 60 | 0 | 21 | 81 |
| [app/models/user_mission.rb](/app/models/user_mission.rb) | Ruby | 6 | 0 | 2 | 8 |
| [app/views/folders/index.html.erb](/app/views/folders/index.html.erb) | erb | 14 | 0 | 2 | 16 |
| [app/views/memos/index.html.erb](/app/views/memos/index.html.erb) | erb | 8 | 0 | 0 | 8 |
| [app/views/posts/index.html.erb](/app/views/posts/index.html.erb) | erb | 14 | 0 | 1 | 15 |
| [app/views/posts/show.html.erb](/app/views/posts/show.html.erb) | erb | 4 | 0 | 1 | 5 |
| [app/views/shared/_navbar.html.erb](/app/views/shared/_navbar.html.erb) | erb | 3 | 0 | 0 | 3 |
| [app/views/tags/index.html.erb](/app/views/tags/index.html.erb) | erb | 7 | 0 | 2 | 9 |
| [app/views/users/index.html.erb](/app/views/users/index.html.erb) | erb | -6 | 0 | -1 | -7 |
| [app/views/users/show.html.erb](/app/views/users/show.html.erb) | erb | 4 | 0 | 2 | 6 |

[Summary](results.md) / [Details](details.md) / [Diff Summary](diff.md) / Diff Details