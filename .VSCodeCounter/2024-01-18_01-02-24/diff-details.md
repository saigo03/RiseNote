# Diff Details

Date : 2024-01-18 01:02:24

Directory /workspaces/RiseNote/app

Total : 63 files,  892 codes, 0 comments, 192 blanks, all 1084 lines

[Summary](results.md) / [Details](details.md) / [Diff Summary](diff.md) / Diff Details

## Files
| filename | language | code | comment | blank | total |
| :--- | :--- | ---: | ---: | ---: | ---: |
| [app/channels/application_cable/channel.rb](/app/channels/application_cable/channel.rb) | Ruby | 4 | 0 | 1 | 5 |
| [app/channels/application_cable/connection.rb](/app/channels/application_cable/connection.rb) | Ruby | 4 | 0 | 1 | 5 |
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
| [app/models/folder.rb](/app/models/folder.rb) | Ruby | 10 | 0 | 2 | 12 |
| [app/models/memo.rb](/app/models/memo.rb) | Ruby | 5 | 0 | 2 | 7 |
| [app/models/mission.rb](/app/models/mission.rb) | Ruby | 4 | 0 | 1 | 5 |
| [app/models/post.rb](/app/models/post.rb) | Ruby | 6 | 0 | 2 | 8 |
| [app/models/tag.rb](/app/models/tag.rb) | Ruby | 3 | 0 | 2 | 5 |
| [app/models/user.rb](/app/models/user.rb) | Ruby | 54 | 0 | 21 | 75 |
| [app/models/user_mission.rb](/app/models/user_mission.rb) | Ruby | 6 | 0 | 2 | 8 |
| [app/views/devise/confirmations/new.html.erb](/app/views/devise/confirmations/new.html.erb) | erb | 12 | 0 | 5 | 17 |
| [app/views/devise/mailer/confirmation_instructions.html.erb](/app/views/devise/mailer/confirmation_instructions.html.erb) | erb | 3 | 0 | 3 | 6 |
| [app/views/devise/mailer/email_changed.html.erb](/app/views/devise/mailer/email_changed.html.erb) | erb | 6 | 0 | 2 | 8 |
| [app/views/devise/mailer/password_change.html.erb](/app/views/devise/mailer/password_change.html.erb) | erb | 2 | 0 | 2 | 4 |
| [app/views/devise/mailer/reset_password_instructions.html.erb](/app/views/devise/mailer/reset_password_instructions.html.erb) | erb | 5 | 0 | 4 | 9 |
| [app/views/devise/mailer/unlock_instructions.html.erb](/app/views/devise/mailer/unlock_instructions.html.erb) | erb | 4 | 0 | 4 | 8 |
| [app/views/devise/passwords/edit.html.erb](/app/views/devise/passwords/edit.html.erb) | erb | 20 | 0 | 6 | 26 |
| [app/views/devise/passwords/new.html.erb](/app/views/devise/passwords/new.html.erb) | erb | 12 | 0 | 5 | 17 |
| [app/views/devise/registrations/edit.html.erb](/app/views/devise/registrations/edit.html.erb) | erb | 30 | 0 | 8 | 38 |
| [app/views/devise/registrations/new.html.erb](/app/views/devise/registrations/new.html.erb) | erb | 28 | 0 | 8 | 36 |
| [app/views/devise/sessions/new.html.erb](/app/views/devise/sessions/new.html.erb) | erb | 22 | 0 | 8 | 30 |
| [app/views/devise/shared/_error_messages.html.erb](/app/views/devise/shared/_error_messages.html.erb) | erb | 15 | 0 | 1 | 16 |
| [app/views/devise/shared/_links.html.erb](/app/views/devise/shared/_links.html.erb) | erb | 20 | 0 | 6 | 26 |
| [app/views/devise/unlocks/new.html.erb](/app/views/devise/unlocks/new.html.erb) | erb | 12 | 0 | 5 | 17 |
| [app/views/folders/index.html.erb](/app/views/folders/index.html.erb) | erb | 43 | 0 | 7 | 50 |
| [app/views/hello/index.html.erb](/app/views/hello/index.html.erb) | erb | 1 | 0 | 1 | 2 |
| [app/views/home/index.html.erb](/app/views/home/index.html.erb) | erb | 22 | 0 | 3 | 25 |
| [app/views/layouts/application.html.erb](/app/views/layouts/application.html.erb) | erb | 38 | 0 | 5 | 43 |
| [app/views/layouts/mailer.html.erb](/app/views/layouts/mailer.html.erb) | erb | 12 | 0 | 2 | 14 |
| [app/views/layouts/mailer.text.erb](/app/views/layouts/mailer.text.erb) | erb | 1 | 0 | 1 | 2 |
| [app/views/learning_records/show.html.erb](/app/views/learning_records/show.html.erb) | erb | 5 | 0 | 5 | 10 |
| [app/views/memos/_form.html.erb](/app/views/memos/_form.html.erb) | erb | 53 | 0 | 11 | 64 |
| [app/views/memos/edit.html.erb](/app/views/memos/edit.html.erb) | erb | 1 | 0 | 0 | 1 |
| [app/views/memos/index.html.erb](/app/views/memos/index.html.erb) | erb | 49 | 0 | 8 | 57 |
| [app/views/memos/new.html.erb](/app/views/memos/new.html.erb) | erb | 1 | 0 | 0 | 1 |
| [app/views/memos/show.html.erb](/app/views/memos/show.html.erb) | erb | 13 | 0 | 3 | 16 |
| [app/views/missions/index.html.erb](/app/views/missions/index.html.erb) | erb | 25 | 0 | 2 | 27 |
| [app/views/posts/index.html.erb](/app/views/posts/index.html.erb) | erb | 31 | 0 | 1 | 32 |
| [app/views/posts/new.html.erb](/app/views/posts/new.html.erb) | erb | 18 | 0 | 3 | 21 |
| [app/views/posts/show.html.erb](/app/views/posts/show.html.erb) | erb | 18 | 0 | 1 | 19 |
| [app/views/shared/_accounts.html.erb](/app/views/shared/_accounts.html.erb) | erb | 5 | 0 | 0 | 5 |
| [app/views/shared/_contextMenu.html.erb](/app/views/shared/_contextMenu.html.erb) | erb | 11 | 0 | 1 | 12 |
| [app/views/shared/_missionList.html.erb](/app/views/shared/_missionList.html.erb) | erb | 29 | 0 | 2 | 31 |
| [app/views/shared/_mypage.html.erb](/app/views/shared/_mypage.html.erb) | erb | 27 | 0 | 1 | 28 |
| [app/views/shared/_navbar.html.erb](/app/views/shared/_navbar.html.erb) | erb | 51 | 0 | 5 | 56 |
| [app/views/static_pages/mypage.html.erb](/app/views/static_pages/mypage.html.erb) | erb | 23 | 0 | 4 | 27 |
| [app/views/static_pages/registration_complete.html.erb](/app/views/static_pages/registration_complete.html.erb) | erb | 8 | 0 | 0 | 8 |
| [app/views/static_pages/userInfo_select.html.erb](/app/views/static_pages/userInfo_select.html.erb) | erb | 21 | 0 | 4 | 25 |
| [app/views/tags/index.html.erb](/app/views/tags/index.html.erb) | erb | 40 | 0 | 4 | 44 |
| [app/views/users/index.html.erb](/app/views/users/index.html.erb) | erb | 24 | 0 | 2 | 26 |

[Summary](results.md) / [Details](details.md) / [Diff Summary](diff.md) / Diff Details