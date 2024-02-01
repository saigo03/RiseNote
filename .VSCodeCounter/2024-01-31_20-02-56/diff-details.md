# Diff Details

Date : 2024-01-31 20:02:56

Directory /workspaces/RiseNote/app

Total : 95 files,  1400 codes, 0 comments, 325 blanks, all 1725 lines

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
| [app/controllers/users/sessions_controller.rb](/app/controllers/users/sessions_controller.rb) | Ruby | 30 | 0 | 8 | 38 |
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
| [app/views/devise/confirmations/new.html.erb](/app/views/devise/confirmations/new.html.erb) | erb | 12 | 0 | 5 | 17 |
| [app/views/devise/mailer/confirmation_instructions.html.erb](/app/views/devise/mailer/confirmation_instructions.html.erb) | erb | 3 | 0 | 3 | 6 |
| [app/views/devise/mailer/email_changed.html.erb](/app/views/devise/mailer/email_changed.html.erb) | erb | 6 | 0 | 2 | 8 |
| [app/views/devise/mailer/password_change.html.erb](/app/views/devise/mailer/password_change.html.erb) | erb | 2 | 0 | 2 | 4 |
| [app/views/devise/mailer/reset_password_instructions.html.erb](/app/views/devise/mailer/reset_password_instructions.html.erb) | erb | 5 | 0 | 4 | 9 |
| [app/views/devise/mailer/unlock_instructions.html.erb](/app/views/devise/mailer/unlock_instructions.html.erb) | erb | 4 | 0 | 4 | 8 |
| [app/views/devise/passwords/edit.html.erb](/app/views/devise/passwords/edit.html.erb) | erb | 20 | 0 | 6 | 26 |
| [app/views/devise/passwords/new.html.erb](/app/views/devise/passwords/new.html.erb) | erb | 12 | 0 | 5 | 17 |
| [app/views/devise/registrations/edit.html.erb](/app/views/devise/registrations/edit.html.erb) | erb | 30 | 0 | 8 | 38 |
| [app/views/devise/registrations/new.html.erb](/app/views/devise/registrations/new.html.erb) | erb | 59 | 0 | 15 | 74 |
| [app/views/devise/sessions/new.html.erb](/app/views/devise/sessions/new.html.erb) | erb | 28 | 0 | 8 | 36 |
| [app/views/devise/shared/_error_messages.html.erb](/app/views/devise/shared/_error_messages.html.erb) | erb | 15 | 0 | 1 | 16 |
| [app/views/devise/shared/_links.html.erb](/app/views/devise/shared/_links.html.erb) | erb | 20 | 0 | 6 | 26 |
| [app/views/devise/unlocks/new.html.erb](/app/views/devise/unlocks/new.html.erb) | erb | 12 | 0 | 5 | 17 |
| [app/views/folders/index.html.erb](/app/views/folders/index.html.erb) | erb | 70 | 0 | 11 | 81 |
| [app/views/folders/new.html.erb](/app/views/folders/new.html.erb) | erb | 0 | 0 | 1 | 1 |
| [app/views/hello/index.html.erb](/app/views/hello/index.html.erb) | erb | 1 | 0 | 1 | 2 |
| [app/views/home/index.html.erb](/app/views/home/index.html.erb) | erb | 80 | 0 | 7 | 87 |
| [app/views/layouts/application.html.erb](/app/views/layouts/application.html.erb) | erb | 39 | 0 | 8 | 47 |
| [app/views/layouts/mailer.html.erb](/app/views/layouts/mailer.html.erb) | erb | 12 | 0 | 2 | 14 |
| [app/views/layouts/mailer.text.erb](/app/views/layouts/mailer.text.erb) | erb | 1 | 0 | 1 | 2 |
| [app/views/learning_records/show.html.erb](/app/views/learning_records/show.html.erb) | erb | 5 | 0 | 7 | 12 |
| [app/views/memos/_form.html.erb](/app/views/memos/_form.html.erb) | erb | 54 | 0 | 11 | 65 |
| [app/views/memos/edit.html.erb](/app/views/memos/edit.html.erb) | erb | 1 | 0 | 0 | 1 |
| [app/views/memos/index.html.erb](/app/views/memos/index.html.erb) | erb | 57 | 0 | 9 | 66 |
| [app/views/memos/new.html.erb](/app/views/memos/new.html.erb) | erb | 1 | 0 | 0 | 1 |
| [app/views/memos/show.html.erb](/app/views/memos/show.html.erb) | erb | 13 | 0 | 3 | 16 |
| [app/views/missions/index.html.erb](/app/views/missions/index.html.erb) | erb | 25 | 0 | 2 | 27 |
| [app/views/posts/index.html.erb](/app/views/posts/index.html.erb) | erb | 69 | 0 | 5 | 74 |
| [app/views/posts/new.html.erb](/app/views/posts/new.html.erb) | erb | 55 | 0 | 12 | 67 |
| [app/views/posts/show.html.erb](/app/views/posts/show.html.erb) | erb | 67 | 0 | 9 | 76 |
| [app/views/shared/_accounts.html.erb](/app/views/shared/_accounts.html.erb) | erb | 5 | 0 | 0 | 5 |
| [app/views/shared/_contextMenu.html.erb](/app/views/shared/_contextMenu.html.erb) | erb | 11 | 0 | 1 | 12 |
| [app/views/shared/_missionList.html.erb](/app/views/shared/_missionList.html.erb) | erb | 29 | 0 | 2 | 31 |
| [app/views/shared/_mypage.html.erb](/app/views/shared/_mypage.html.erb) | erb | 27 | 0 | 1 | 28 |
| [app/views/shared/_navbar.html.erb](/app/views/shared/_navbar.html.erb) | erb | 49 | 0 | 10 | 59 |
| [app/views/tags/index.html.erb](/app/views/tags/index.html.erb) | erb | 46 | 0 | 4 | 50 |
| [app/views/users/index.html.erb](/app/views/users/index.html.erb) | erb | 52 | 0 | 8 | 60 |
| [app/views/users/show.html.erb](/app/views/users/show.html.erb) | erb | 59 | 0 | 11 | 70 |
| [db/migrate/20231206015015_devise_create_users.rb](/db/migrate/20231206015015_devise_create_users.rb) | Ruby | -35 | 0 | -10 | -45 |
| [db/migrate/20231206021443_create_memos.rb](/db/migrate/20231206021443_create_memos.rb) | Ruby | -10 | 0 | -2 | -12 |
| [db/migrate/20231206053801_create_memos_tags.rb](/db/migrate/20231206053801_create_memos_tags.rb) | Ruby | -9 | 0 | -2 | -11 |
| [db/migrate/20231206054007_create_tags.rb](/db/migrate/20231206054007_create_tags.rb) | Ruby | -8 | 0 | -2 | -10 |
| [db/migrate/20231206060443_add_admin_to_users.rb](/db/migrate/20231206060443_add_admin_to_users.rb) | Ruby | -5 | 0 | -1 | -6 |
| [db/migrate/20231210055705_create_folders.rb](/db/migrate/20231210055705_create_folders.rb) | Ruby | -8 | 0 | -2 | -10 |
| [db/migrate/20231210055912_add_folder_to_memos.rb](/db/migrate/20231210055912_add_folder_to_memos.rb) | Ruby | -5 | 0 | -1 | -6 |
| [db/migrate/20231213051444_add_user_to_folders.rb](/db/migrate/20231213051444_add_user_to_folders.rb) | Ruby | -5 | 0 | -1 | -6 |
| [db/migrate/20231220115832_add_username_to_users.rb](/db/migrate/20231220115832_add_username_to_users.rb) | Ruby | -5 | 0 | -1 | -6 |
| [db/migrate/20231223154132_create_missions.rb](/db/migrate/20231223154132_create_missions.rb) | Ruby | -11 | 0 | -2 | -13 |
| [db/migrate/20231223154143_add_rank_and_points_to_users.rb](/db/migrate/20231223154143_add_rank_and_points_to_users.rb) | Ruby | -6 | 0 | -1 | -7 |
| [db/migrate/20231223154523_create_user_missions.rb](/db/migrate/20231223154523_create_user_missions.rb) | Ruby | -10 | 0 | -2 | -12 |
| [db/migrate/20240112030518_create_posts.rb](/db/migrate/20240112030518_create_posts.rb) | Ruby | -10 | 0 | -2 | -12 |
| [db/migrate/20240115021156_add_read_to_posts.rb](/db/migrate/20240115021156_add_read_to_posts.rb) | Ruby | -5 | 0 | -1 | -6 |
| [db/schema.rb](/db/schema.rb) | Ruby | -90 | 0 | -10 | -100 |
| [db/seeds.rb](/db/seeds.rb) | Ruby | -7 | 0 | -1 | -8 |

[Summary](results.md) / [Details](details.md) / [Diff Summary](diff.md) / Diff Details