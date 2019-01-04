p 'start'

######################################################################################################
# clean up
######################################################################################################

Application.destroy_all
Applicant.destroy_all
ChronicleItem.destroy_all
ChronicleItemSkill.destroy_all
Image.destroy_all
Address.destroy_all
Website.destroy_all
Information.destroy_all
Skill.destroy_all



######################################################################################################
# applicants
######################################################################################################

applicant = Applicant.new(
  birthday: '18-07-1986',
  email: 'heiko.beineke@gmail.com',
  mobile_phone: '0151 555 45 345',
)
I18n.locale = :de
applicant.slogan = 'Gamer, Entdecker, Verwirklicher'
applicant.family_status = 'verheiratet'
I18n.locale = :en
applicant.slogan = "Gamer, Explorer, Accomplisher"
applicant.family_status = 'married'
applicant.save

img = Image.new(
  url: 'https://lh3.googleusercontent.com/s1R8hHh2LeH27UA7ij6x0F77U0fEcg1yw9ysN4HVzgCs0spgxnp5EB1-BFxOS-G2KvSq99mwQCT0ROm91Sv7tYmCqjCDC75KitE20DIswy-3LHGgvw8NotU-8j1hSTUeutJV0FDcAVi6wHLpKYFKFcjTWKlPbVCbVdcyObNd1ROac3sEPtENmKc-i1GbLms99Zzdst7qu3B-eeXCx9ho_5i5-tyEuKaop5kyL4kXuoFlhF9C8NEwr0lC8d2lj89UTt9IEfG6QJoz3426wyc9jcdwjhn5pOC2w4K_gY7rwY5KMUf2jooQFTx5tUbgvyc0nxefaunNwqygtT9MxG4CDVrcyoUo57eM_sSjsuuKF7MBeiNBj747_nkvpcc8YZ3vgqMEkWL3Hy9R_LfczZGekXxyR6eL7Ji1rU36fhZZ984yHAIwStcSm4Nt9ql0o5hgbraa5Qb1JKGXXGJBtE2jDWDKrnh3rog7vmKpoq1jULNT0wv8QbG4QIV2MVpXE3rJD1Sfd0TodXtpckLxwaZM2C4To6kJxYa3AoH0jGAPztcxQgrfJ74-9M_uw7ynL5orFZQ1B9VIiAfz2YLrfnO3ubwDk93Mtxnb92v3r35aGj5udsnRMDVtOReG5Yo8yJTd-b_ica7BOP4Q3OHqs5YELbrf=w430-h700-no',
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
img.title = 'Gamer'
img.description = 'Deine Wahrnehmung bestimmt deine Realität. - Qui-Gon Jinn'
I18n.locale = :en
img.title = 'Gamer'
img.description = 'Your focus determines your reality. - Qui-Gon Jinn'
img.save

img = Image.new(
  url: 'https://lh3.googleusercontent.com/jWnnl2BcJCQ9gZxNCASNqS5FBFfIUEPGMF85HmJYz8ru5juOhwQ_9DueOy1I3UHAAst5Z_ou70BGFlyEck_Xf8J0n2n58kGIe90o_sXPUUvlwsWb2P3Jxl3t06-fHftliMrCxt5Ky5xLu-KfVPKroGRejdW52SO4R8AQ_JL1c4MmvjvBrAcifzY_SfNkhVsO5_Y0wTqd2eE7FU3QcuJaw_MPPBKU3NvjOQKdeD5t7KvqjdzsCbsXDkpPbLLY-ioBVTxceYlpQGiSgfwPRBHDOBWHUmqR2DOBeNvN6cczbPpuGc0jbUegi52xyOIoKcnQsMM93XqRMtJKGc5MOuHfaUX1_2n9FEFQYAIX5SbppkgV9Ep1glJkJqupuWJiZ-US_fqiYvMzHsG36DFCw5xzgmMgK5IzAb0DCese_Z4cepHsDHUqnmPsVmAKz03hxQkLApIIRVfznZtejv8SnK5HclZf8ctLr8VjweX0dUoK9KYKhTyukdRknMDltZ0GNbqcnckARZjzQ-Xr4yqCAVEMnpg8nSNhs39vvZ7JVddq7vmM444F5fQ0rftiKbxsTihOMIOsWWX3iwFdiZ-XlJqQSFrC_JuLtQOyyx5EejtGppVpaRzHTQ2L-QPcUFvbW5MV4FJAuSXovkZOagPiFObj5jlU=w430-h700-no',
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
img.title = 'Entdecker'
img.description = 'Ich habe keine besondere Begabung, sondern bin nur leidenschaftlich neugierig. - Albert Einstein'
I18n.locale = :en
img.title = 'Explorer'
img.description = 'I have no special talent. I am only passionately curious. - Albert Einstein'
img.save

img = Image.new(
  url: 'https://lh3.googleusercontent.com/QJWnWquJx91n3EFGs24RuWw-ZvpOalqMLeS2j4AbNk5MwANXCVvjhk78UyjhXMtog9ILSDJSvgqbU3bnRnlVStVhs_bmv_tpozVOvgiTDuxuMZKoFlL6sRdK6Fjwo7tX7_IxlZJ2FppB4CYDlDceGcDxt7OIqfuD-R0qVjU73EhIaZLk3Vgn6Sh-fYI3oQEaSKfcfPyV3zNn15d-ZcfdY00vz6pAD48QTJTlM_RuftOuKnKVIDXHjurM-ovvVY_sRZUDLdxaCVBhBJQPGvWZefYTHkbwwXhT9J7vb12tyrC6N6H8VrX6Dn_P5IgRaQEhfdnUUZy6coMl0FdPDDrA7_l2awHsDe68g1CHBoTwIpd12lN-OE-a6-K8RfnKGb_ZxIDANvdFJmGF73BOmawspsaU44lh7dp-nsl-h7m_KmhUTut4123slakzK9kb1EBvTLWrmWl8ZUPLe_V-qpjnbneCOhr18umkxtHqH0j-sIFDcs9xsKcBBnNvkSzVzeE9iVtCr0aw8kO5tDm5rirLxxQQBlJ8E_-jURMad8rJCe9gPoG_FTvNl-C12gEreg3hmyTS=w430-h700-no',
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
img.title = 'Verwirklicher'
img.description = 'Wer immer tut, was er schon kann, bleibt immer das, was er schon ist. - Henry Ford'
I18n.locale = :en
img.title = 'Accomplisher'
img.description = 'If you always do what you’ve always done, you’ll always get what you’ve always got. - Henry Ford'
img.save

Address.create(
  person: 'Heiko Beineke',
  street: 'Weststr. 1',
  zip: '48565',
  city: 'Steinfurt',
  addressable_id: applicant.id,
  addressable_type: applicant.model_name
)

Website.create(
  title: 'GitHub',
  url: 'https://github.com/HBeineke',
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Website.create(
  title: 'XING',
  url: 'https://www.xing.com/profile/Heiko_Beineke',
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Website.create(
  title: 'Code School',
  url: 'https://www.codeschool.com/users/405180',
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
Website.create(
  title: 'Homepage',
  url: 'https://hb-curriculum-vitae.herokuapp.com/',
  informable_id: applicant.id,
  informable_type: applicant.model_name
)



######################################################################################################
# skills
######################################################################################################

# keyword
skill = Skill.new()
skill.information_type = :keyword
I18n.locale = :de
skill.title = 'Projektmanagement'
I18n.locale = :en
skill.title = 'Project Management'
skill.save

skill = Skill.new()
skill.information_type = :keyword
I18n.locale = :de
skill.title = 'Prozessoptimierung'
I18n.locale = :en
skill.title = 'Process Optimization'
skill.save

skill = Skill.new()
skill.information_type = :keyword
skill.top = true
I18n.locale = :de
skill.title = 'Softwarequalität'
I18n.locale = :en
skill.title = 'Software Quality'
skill.save

skill = Skill.new()
skill.information_type = :keyword
I18n.locale = :de
skill.title = 'Software Engineering'
I18n.locale = :en
skill.title = 'Software Engineering'
skill.save

skill = Skill.new()
skill.information_type = :keyword
I18n.locale = :de
skill.title = 'Web Engineering'
I18n.locale = :en
skill.title = 'Web Engineering'
skill.save

skill = Skill.new()
skill.information_type = :keyword
skill.top = true
I18n.locale = :de
skill.title = 'Frontend Development'
I18n.locale = :en
skill.title = 'Frontend Development'
skill.save

skill = Skill.new()
skill.information_type = :keyword
skill.top = true
I18n.locale = :de
skill.title = 'Backend Development'
I18n.locale = :en
skill.title = 'Backend Development'
skill.save

skill = Skill.new()
skill.information_type = :keyword
skill.top = true
I18n.locale = :de
skill.title = 'Usability'
I18n.locale = :en
skill.title = 'Usability'
skill.save

skill = Skill.new()
skill.information_type = :keyword
I18n.locale = :de
skill.title = 'Mobile Optimierung'
I18n.locale = :en
skill.title = 'Mobile Optimization'
skill.save


# keyword
skill = Skill.new()
skill.information_type = :keyword
skill.top = true
I18n.locale = :de
skill.title = 'Testing'
I18n.locale = :en
skill.title = 'Testing'
skill.save

skill = Skill.new()
skill.information_type = :keyword
I18n.locale = :de
skill.title = 'Test Driven'
I18n.locale = :en
skill.title = 'Test Driven'
skill.save

skill = Skill.new()
skill.information_type = :keyword
skill.top = true
I18n.locale = :de
skill.title = 'Code Reviews'
I18n.locale = :en
skill.title = 'Code Reviews'
skill.save

skill = Skill.new()
skill.information_type = :keyword
I18n.locale = :de
skill.title = 'MVC'
I18n.locale = :en
skill.title = 'MVC'
skill.save

skill = Skill.new()
skill.information_type = :keyword
I18n.locale = :de
skill.title = 'REST'
I18n.locale = :en
skill.title = 'REST'
skill.save

skill = Skill.new()
skill.information_type = :keyword
I18n.locale = :de
skill.title = 'Webservices'
I18n.locale = :en
skill.title = 'Webservices'
skill.save

skill = Skill.new()
skill.information_type = :keyword
skill.top = true
I18n.locale = :de
skill.title = 'Microservices'
I18n.locale = :en
skill.title = 'Microservices'
skill.save

skill = Skill.new()
skill.information_type = :keyword
I18n.locale = :de
skill.title = 'KVP'
I18n.locale = :en
skill.title = 'CIP'
skill.save

skill = Skill.new()
skill.information_type = :keyword
skill.top = true
I18n.locale = :de
skill.title = 'Agil'
I18n.locale = :en
skill.title = 'Agile'
skill.save

skill = Skill.new()
skill.information_type = :keyword
I18n.locale = :de
skill.title = 'Kanban'
I18n.locale = :en
skill.title = 'Kanban'
skill.save

skill = Skill.new()
skill.information_type = :keyword
skill.top = true
I18n.locale = :de
skill.title = 'Scrum'
I18n.locale = :en
skill.title = 'Scrum'
skill.save

skill = Skill.new()
skill.information_type = :keyword
skill.top = true
I18n.locale = :de
skill.title = 'Lean Startup'
I18n.locale = :en
skill.title = 'Lean Startup'
skill.save

skill = Skill.new()
skill.information_type = :keyword
skill.top = true
I18n.locale = :de
skill.title = 'Homeoffice'
I18n.locale = :en
skill.title = 'Homeoffice'
skill.save

skill = Skill.new()
skill.information_type = :keyword
skill.top = true
I18n.locale = :de
skill.title = 'Deutsch (Muttersprache)'
I18n.locale = :en
skill.title = 'German (Native language)'
skill.save
applicant.skills << skill

skill = Skill.new()
skill.information_type = :keyword
skill.top = true
I18n.locale = :de
skill.title = 'Englisch (B2)'
I18n.locale = :en
skill.title = 'English (B2)'
skill.save
applicant.skills << skill

# technology
skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'Assembler'
I18n.locale = :en
skill.title = 'Assembler'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'Visual Basic'
I18n.locale = :en
skill.title = 'Visual Basic'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'C'
I18n.locale = :en
skill.title = 'C'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'C#'
I18n.locale = :en
skill.title = 'C#'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'Java'
I18n.locale = :en
skill.title = 'Java'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'PHP'
I18n.locale = :en
skill.title = 'PHP'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'Zend Framework'
I18n.locale = :en
skill.title = 'Zend Framework'
skill.save

skill = Skill.new()
skill.information_type = :technology
skill.top = true
I18n.locale = :de
skill.title = 'Ruby'
I18n.locale = :en
skill.title = 'Ruby'
skill.save

skill = Skill.new()
skill.information_type = :technology
skill.top = true
I18n.locale = :de
skill.title = 'Ruby on Rails'
I18n.locale = :en
skill.title = 'Ruby on Rails'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'RSpec'
I18n.locale = :en
skill.title = 'RSpec'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'Capybara'
I18n.locale = :en
skill.title = 'Capybara'
skill.save

skill = Skill.new()
skill.information_type = :technology
skill.top = true
I18n.locale = :de
skill.title = 'Python'
I18n.locale = :en
skill.title = 'Python'
skill.save

skill = Skill.new()
skill.information_type = :technology
skill.top = true
I18n.locale = :de
skill.title = 'Django'
I18n.locale = :en
skill.title = 'Django'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'SQL'
I18n.locale = :en
skill.title = 'SQL'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'Oracle'
I18n.locale = :en
skill.title = 'Oracle'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'MySQL'
I18n.locale = :en
skill.title = 'MySQL'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'PostgreSQL'
I18n.locale = :en
skill.title = 'PostgreSQL'
skill.save

skill = Skill.new()
skill.information_type = :technology
skill.top = true
I18n.locale = :de
skill.title = 'HTML5'
I18n.locale = :en
skill.title = 'HTML5'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'Haml'
I18n.locale = :en
skill.title = 'Haml'
skill.save

skill = Skill.new()
skill.information_type = :technology
skill.top = true
I18n.locale = :de
skill.title = 'CSS3'
I18n.locale = :en
skill.title = 'CSS3'
skill.save

skill = Skill.new()
skill.information_type = :technology
skill.top = true
I18n.locale = :de
skill.title = 'Sass'
I18n.locale = :en
skill.title = 'Sass'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'Bootstrap'
I18n.locale = :en
skill.title = 'Bootstrap'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'Bulma'
I18n.locale = :en
skill.title = 'Bulma'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'Tailwind CSS'
I18n.locale = :en
skill.title = 'Tailwind CSS'
skill.save

skill = Skill.new()
skill.information_type = :technology
skill.top = true
I18n.locale = :de
skill.title = 'JavaScript'
I18n.locale = :en
skill.title = 'JavaScript'
skill.save

skill = Skill.new()
skill.information_type = :technology
skill.top = true
I18n.locale = :de
skill.title = 'Vue'
I18n.locale = :en
skill.title = 'Vue'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'Storybook'
I18n.locale = :en
skill.title = 'Storybook'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'CoffeeScript'
I18n.locale = :en
skill.title = 'CoffeeScript'
skill.save

skill = Skill.new()
skill.information_type = :technology
skill.top = true
I18n.locale = :de
skill.title = 'jQuery'
I18n.locale = :en
skill.title = 'jQuery'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'AngularJS'
I18n.locale = :en
skill.title = 'AngularJS'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'Highcharts'
I18n.locale = :en
skill.title = 'Highcharts'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'Ajax'
I18n.locale = :en
skill.title = 'Ajax'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'AMQP'
I18n.locale = :en
skill.title = 'AMQP'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'JSON'
I18n.locale = :en
skill.title = 'JSON'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'XML'
I18n.locale = :en
skill.title = 'XML'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'BPMN 2.0'
I18n.locale = :en
skill.title = 'BPMN 2.0'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'UML'
I18n.locale = :en
skill.title = 'UML'
skill.save

skill = Skill.new()
skill.information_type = :technology
I18n.locale = :de
skill.title = 'webpack'
I18n.locale = :en
skill.title = 'webpack'
skill.save


# software
skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Windows'
I18n.locale = :en
skill.title = 'Windows'
skill.save

skill = Skill.new()
skill.information_type = :software
skill.top = true
I18n.locale = :de
skill.title = 'Ubuntu'
I18n.locale = :en
skill.title = 'Ubuntu'
skill.save

skill = Skill.new()
skill.information_type = :software
skill.top = true
I18n.locale = :de
skill.title = 'Mac OS'
I18n.locale = :en
skill.title = 'Mac OS'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'SVN'
I18n.locale = :en
skill.title = 'SVN'
skill.save

skill = Skill.new()
skill.information_type = :software
skill.top = true
I18n.locale = :de
skill.title = 'git'
I18n.locale = :en
skill.title = 'git'
skill.save

skill = Skill.new()
skill.information_type = :software
skill.top = true
I18n.locale = :de
skill.title = 'GitHub'
I18n.locale = :en
skill.title = 'GitHub'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Bitbucket'
I18n.locale = :en
skill.title = 'Bitbucket'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'GitLab'
I18n.locale = :en
skill.title = 'GitLab'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Git Tower'
I18n.locale = :en
skill.title = 'Git Tower'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'SourceTree'
I18n.locale = :en
skill.title = 'SourceTree'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'GitKraken'
I18n.locale = :en
skill.title = 'GitKraken'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'DiffMerge'
I18n.locale = :en
skill.title = 'DiffMerge'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Visual Studio'
I18n.locale = :en
skill.title = 'Visual Studio'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Eclipse'
I18n.locale = :en
skill.title = 'Eclipse'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Sublime Text'
I18n.locale = :en
skill.title = 'Sublime Text'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Atom'
I18n.locale = :en
skill.title = 'Atom'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'PyCharm'
I18n.locale = :en
skill.title = 'PyCharm'
skill.save
applicant.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Visual Studio Code'
I18n.locale = :en
skill.title = 'Visual Studio Code'
skill.save

skill = Skill.new()
skill.information_type = :software
skill.top = true
I18n.locale = :de
skill.title = 'Jira'
I18n.locale = :en
skill.title = 'Jira'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Basecamp'
I18n.locale = :en
skill.title = 'Basecamp'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Redmine'
I18n.locale = :en
skill.title = 'Redmine'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Trello'
I18n.locale = :en
skill.title = 'Trello'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'RabbitMQ'
I18n.locale = :en
skill.title = 'RabbitMQ'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Travis CI'
I18n.locale = :en
skill.title = 'Travis CI'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Jenkins'
I18n.locale = :en
skill.title = 'Jenkins'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Airbrake'
I18n.locale = :en
skill.title = 'Airbrake'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Errbit'
I18n.locale = :en
skill.title = 'Errbit'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Heroku'
I18n.locale = :en
skill.title = 'Heroku'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Camtasia Studio'
I18n.locale = :en
skill.title = 'Camtasia Studio'
skill.save

skill = Skill.new()
skill.information_type = :software
skill.top = true
I18n.locale = :de
skill.title = 'GIMP'
I18n.locale = :en
skill.title = 'GIMP'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Office'
I18n.locale = :en
skill.title = 'Office'
skill.save

skill = Skill.new()
skill.information_type = :software
I18n.locale = :de
skill.title = 'Google Tools'
I18n.locale = :en
skill.title = 'Google Tools'
skill.save
I18n.locale = :de


# soft
skill = Skill.new()
skill.information_type = :soft
skill.top = true
I18n.locale = :de
skill.title = 'Problemlösungsorientiert'
I18n.locale = :en
skill.title = 'Solution-oriented'
skill.save
I18n.locale = :de
applicant.skills << skill

skill = Skill.new()
skill.information_type = :soft
skill.top = true
I18n.locale = :de
skill.title = 'Lernfreudig'
I18n.locale = :en
skill.title = 'Willingness to learn'
skill.save
I18n.locale = :de
applicant.skills << skill

skill = Skill.new()
skill.information_type = :soft
I18n.locale = :de
skill.title = 'Selbständiges Arbeiten'
I18n.locale = :en
skill.title = 'Independent working'
skill.save
I18n.locale = :de
applicant.skills << skill

skill = Skill.new()
skill.information_type = :soft
skill.top = true
I18n.locale = :de
skill.title = 'Teamplayer'
I18n.locale = :en
skill.title = 'Teamplayer'
skill.save
I18n.locale = :de
applicant.skills << skill

skill = Skill.new()
skill.information_type = :soft
skill.top = true
I18n.locale = :de
skill.title = 'Qualitätsbewusst'
I18n.locale = :en
skill.title = 'Quality-conscious'
skill.save
I18n.locale = :de
applicant.skills << skill

skill = Skill.new()
skill.information_type = :soft
I18n.locale = :de
skill.title = 'Begeisterungsfähig'
I18n.locale = :en
skill.title = 'Enthusiastic'
skill.save
I18n.locale = :de
applicant.skills << skill

skill = Skill.new()
skill.information_type = :soft
I18n.locale = :de
skill.title = 'Bodenständig'
I18n.locale = :en
skill.title = 'Grounded'
skill.save
I18n.locale = :de
applicant.skills << skill


######################################################################################################
# chronicle
######################################################################################################

address = Address.create(
  zip: '48653',
  city: 'Coesfeld'
)
ci = Highlight.new(
  started_at: '18-07-1986',
  ended_at: nil,
  badge: 'birthday-cake',
  applicant: applicant,
  address: address,
  order: 10
)
I18n.locale = :de
ci.title = 'Geburtstag'
I18n.locale = :en
ci.title = 'Birthday'
ci.save


######################################################################################################


school = Address.create(
  name: 'KVG Gesamtschule Nordwalde',
  street: 'Amtmann-Daniel-Straße 30',
  zip: '48356',
  city: 'Nordwalde'
)
ci = Education.new(
  started_at: '01-08-1997',
  ended_at: '01-07-2003',
  badge: 'book',
  applicant: applicant,
  address: school,
  order: 20
)
I18n.locale = :de
ci.title = 'Realschule'
ci.graduation = 'Fachoberschulreife'
I18n.locale = :en
ci.title = 'Secondary school'
ci.graduation = 'Vocational extension certificate'
ci.save
I18n.locale = :de
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Windows').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Office').id, experience: :regular)


######################################################################################################


school = Address.create(
  name: 'Wirtschaftsschulen des Kreises Steinfurt',
  street: 'Bahnhofstraße 28',
  zip: '48565',
  city: 'Steinfurt'
)
ci = Education.new(
  started_at: '01-08-2003',
  ended_at: '01-06-2005',
  badge: 'book',
  applicant: applicant,
  address: school,
  order: 30
)
I18n.locale = :de
ci.title = 'Höhere Handelsschule'
ci.graduation = 'Fachhochschulreife (Wirtschaft)'
I18n.locale = :en
ci.title = 'Commercial college'
ci.graduation = 'Advanced college certificate (Commercial)'
ci.save
I18n.locale = :de
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Windows').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Office').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Visual Basic').id, experience: :rare)


######################################################################################################


ci = Highlight.new(
  started_at: '22-02-2004',
  ended_at: nil,
  badge: 'heart',
  applicant: applicant,
  order: 40
)
I18n.locale = :de
ci.title = 'Traf die Liebe meines Lebens'
I18n.locale = :en
ci.title = "Met the love of my life"
ci.save


######################################################################################################


ci = Highlight.new(
  started_at: '01-10-2006',
  ended_at: nil,
  badge: 'car',
  applicant: applicant,
  order: 50
)
I18n.locale = :de
ci.title = 'Führerschein Klasse B'
I18n.locale = :en
ci.title = "Driving licence"
ci.save


######################################################################################################


school = Address.create(
  name: 'Technische Schulen des Kreises Steinfurt',
  street: 'Liedekerker Str. 84',
  zip: '48565',
  city: 'Steinfurt'
)
ci = Education.new(
  started_at: '01-08-2005',
  ended_at: '01-07-2008',
  badge: 'book',
  applicant: applicant,
  address: school,
  order: 60
)
I18n.locale = :de
ci.title = 'Informationstechnischer Assistent'
ci.description = 'Abschluss als Jahrgangsbester'
ci.graduation = 'Fachhochschulreife (Informatik)'
I18n.locale = :en
ci.title = 'IT assistant'
ci.description = 'Graduation as best of year'
ci.graduation = 'Advanced college certificate (IT)'
ci.save
I18n.locale = :de
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Windows').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ubuntu').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Office').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'C').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'PHP').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Assembler').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'C#').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Java').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Visual Studio').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Eclipse').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Camtasia Studio').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'UML').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'SQL').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MySQL').id, experience: :rare)


######################################################################################################


ci = Highlight.new(
  started_at: '01-03-2002',
  ended_at: '01-09-2009',
  badge: 'money-bill-alt',
  applicant: applicant,
  order: 70
)
I18n.locale = :de
ci.title = 'Verschiedene Aushilfsjobs'
ci.description = 'Martin Oelrich GmbH & Co. KG (Wagenwäscher);Emsdettener Fahrradkurier (Briefzusteller);Movie and More - Videothek (Verkäufer);Biobauernhof (Mädchen für alles);Hermes Logistik Gruppe Deutschland (Paketzusteller);crashtest-service.com GmbH (Datenaufbereitung)'
I18n.locale = :en
ci.title = "Various backup jobs"
ci.description = 'Martin Oelrich GmbH & Co. KG (Car washer);Emsdettener Fahrradkurier (Mail carrier);Movie and More - Video library (Seller);Organic farm (Utility man);Hermes Logistik Gruppe Deutschland (Parcel delivery);crashtest-service.com GmbH (Data preparation)'
ci.save


######################################################################################################


school = Address.create(
  name: 'Fachhochschule Münster',
  street: 'Bismarckstraße 11',
  zip: '48565',
  city: 'Steinfurt',
  website: Website.create(url: 'https://www.fh-muenster.de/fb2/index.php' )
)

ci = Education.new(
  started_at: '01-10-2008',
  ended_at: '01-07-2010',
  title: 'Angewandte Informatik',
  badge: 'graduation-cap',
  graduation: nil,
  applicant: applicant,
  address: school,
  order: 80
)
I18n.locale = :de
ci.title = 'Angewandte Informatik'
I18n.locale = :en
ci.title = 'Applied computer science'
ci.save
I18n.locale = :de
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Projektmanagement').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Backend Development').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Windows').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ubuntu').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Office').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'C').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Java').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Eclipse').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'SVN').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'UML').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Software Engineering').id, experience: :regular)


######################################################################################################


company = Address.create(
  name: 'Fachhochschule Münster',
  street: 'Corrensstraße 25',
  zip: '48149',
  city: 'Münster',
  website: Website.create(url: 'https://www.fh-muenster.de/fb9/index.php' )
)
ci = Job.new(
  started_at: '01-12-2010',
  ended_at: '01-02-2011',
  employment: :student_assistant,
  position: :web_developer,
  badge: 'code',
  applicant: applicant,
  address: company,
  order: 90
)
I18n.locale = :de
ci.title = 'Web Developer'
ci.description = 'Wartung und Weiterentwicklung der Website'
I18n.locale = :en
ci.title = 'Web Developer'
ci.description = 'Maintenance and further development of the website'
ci.save
I18n.locale = :de
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'PHP').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ajax').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JSON').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sublime Text').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Web Engineering').id, experience: :frequent)


######################################################################################################


company = Address.create(
  name: 'zeb/rolfes.schierenbeck.associates GmbH',
  street: 'Hammer Str. 165',
  zip: '48153',
  city: 'Münster',
  website: Website.create(url: 'http://www.zeb.de/' )
)
ci = Job.new(
  started_at: '01-04-2009',
  ended_at: '01-07-2011',
  employment: :student_assistant,
  position: :web_developer,
  badge: 'code',
  top: true,
  applicant: applicant,
  address: company,
  order: 100
)
I18n.locale = :de
ci.title = 'Web Developer'
ci.description = 'Wartung und Weiterentwicklung eines Prototypen'
I18n.locale = :en
ci.title = 'Web Developer'
ci.description = 'Maintenance and further development of a prototype'
ci.save
I18n.locale = :de
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sublime Text').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'SVN').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Jira').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Web Engineering').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GIMP').id , experience: :rare)


######################################################################################################


address = Address.create(
  street: 'Theodor-Heuss-Str. 8',
  zip: '48341',
  city: 'Altenberge'
)

ci = Highlight.new(
  started_at: '22-04-2011',
  ended_at: '22-09-2014',
  badge: 'home',
  applicant: applicant,
  address: address,
  order: 110
)
I18n.locale = :de
ci.title = 'Erste gemeinsame Wohnung'
I18n.locale = :en
ci.title = 'First shared apartment'
ci.save


######################################################################################################


company = Address.create(
  name: 'gloud GmbH',
  street: 'Hafenstraße 29- 31',
  zip: '48153',
  city: 'Münster',
  website: Website.create(url: 'http://gloud.de/')
)
ci = Job.new(
  started_at: '01-01-2012',
  ended_at: '01-07-2012',
  employment: :student_assistant,
  position: :web_developer,
  badge: 'code',
  applicant: applicant,
  address: company,
  order: 120
)
I18n.locale = :de
ci.title = 'Web Developer'
ci.description = 'Wartung und Weiterentwicklung eines Prototypen'
I18n.locale = :en
ci.title = 'Web Developer'
ci.description = 'Maintenance and further development of a prototype'
ci.save
I18n.locale = :de
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'PHP').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Zend Framework').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ajax').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Highcharts').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JSON').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sublime Text').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Web Engineering').id , experience: :frequent)


######################################################################################################


company = Address.create(
  name: 'Fachhochschule Münster',
  street: 'Corrensstraße 25',
  zip: '48149',
  city: 'Münster',
  website: Website.create(url: 'https://www.fh-muenster.de/wirtschaftsinformatik/index.php')
)
ci = Job.new(
  started_at: '01-07-2012',
  ended_at: '01-09-2012',
  employment: :intern,
  position: :web_developer,
  badge: 'code',
  top: true,
  applicant: applicant,
  address: company,
  order: 130
)
I18n.locale = :de
ci.title = 'Web Developer'
ci.description = 'Entwurf und Umsetzung einer Anwendung für die Hochschulverwaltung'
I18n.locale = :en
ci.title = 'Web Developer'
ci.description = 'Design and implementation of an application for the university administration'
ci.save
I18n.locale = :de
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Projektmanagement').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Prozessoptimierung').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Softwarequalität').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Code Reviews').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Backend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Usability').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MVC').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby on Rails').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'RSpec').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Capybara').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Haml').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CoffeeScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ajax').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JSON').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sass').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'git').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GitHub').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Test Driven').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Agil').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sublime Text').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ubuntu').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Web Engineering').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Windows').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Office').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Google Tools').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GIMP').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Testing').id , experience: :frequent)


######################################################################################################


ci = Highlight.new(
  started_at: '22-02-2013',
  ended_at: nil,
  badge: 'heart',
  applicant: applicant,
  order: 140
)
I18n.locale = :de
ci.title = 'Heiratete die Liebe meines Lebens'
I18n.locale = :en
ci.title = "Married the love of my life"
ci.save


######################################################################################################


company = Address.create(
  name: 'COMPEON GmbH',
  street: 'Kirchstraße 6',
  zip: '48282',
  city: 'Emsdetten',
  website: Website.create(url: 'https://www.compeon.de')
)
ci = Job.new(
  started_at: '01-03-2013',
  ended_at: '01-09-2013',
  employment: :bachelor,
  position: :web_developer,
  badge: 'code',
  top: true,
  applicant: applicant,
  address: company,
  order: 150
)
I18n.locale = :de
ci.title = 'Web Developer'
ci.description = 'Wartung und Weiterentwicklung des Online-Finanzportals COMPEON;Bachelorarbeit: Konzeption, Implementierung und Evaluation einer webbasierten Anwendung zur Erfassung der Kundenzufriedenheit und zur Publikation von Kundenempfehlungen im Rahmen des Online-Finanzportals COMPEON'
I18n.locale = :en
ci.title = 'Web Developer'
ci.description = 'Maintenance and further development of the online financial portal COMPEON;Bachelor Thesis: Conception, implementation and evaluation of a web-based application for recording customer satisfaction and for publishing customer recommendations in the context of the online financial portal COMPEON'
ci.save
I18n.locale = :de
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Softwarequalität').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Code Reviews').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Backend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Usability').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby on Rails').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MVC').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'RSpec').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Capybara').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Haml').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CoffeeScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ajax').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JSON').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sass').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'git').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GitHub').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Git Tower').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Test Driven').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Agil').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sublime Text').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ubuntu').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Web Engineering').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'AngularJS').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GIMP').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Testing').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Kanban').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Travis CI').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Google Tools').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Airbrake').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Basecamp').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Heroku').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'PostgreSQL').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'KVP').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Lean Startup').id, experience: :frequent)


######################################################################################################


school = Address.create(
  name: 'Fachhochschule Münster',
  street: 'Corrensstraße 25',
  zip: '48149',
  city: 'Münster',
  website: Website.create(url: 'https://www.fh-muenster.de/wirtschaftsinformatik/index.php')
)
ci = Education.new(
  started_at: '01-10-2010',
  ended_at: '01-09-2013',
  badge: 'graduation-cap',
  top: true,
  applicant: applicant,
  address: school,
  order: 160
)
I18n.locale = :de
ci.title = 'Wirtschaftsinformatik'
ci.graduation = 'Bachelor of science'
I18n.locale = :en
ci.title = 'Business computer science'
ci.graduation = 'Bachelor of science'
ci.save
I18n.locale = :de
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Projektmanagement').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Prozessoptimierung').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Softwarequalität').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Code Reviews').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Web Engineering').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Software Engineering').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Backend Development').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Usability').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Java').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'PHP').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby on Rails').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MVC').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'RSpec').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Capybara').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Haml').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CoffeeScript').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ajax').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JSON').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sass').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'git').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GitHub').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Test Driven').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Agil').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sublime Text').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ubuntu').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Eclipse').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'UML').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Testing').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Google Tools').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'XML').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MySQL').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'PostgreSQL').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'SQL').id, experience: :regular)


######################################################################################################


company = Address.create(
  name: 'Fuchs Gewürze GmbH',
  street: 'Industriestraße 25',
  zip: '49201',
  city: 'Dissen a.T.W.',
  website: Website.create(url: 'http://www.fuchs.de/')
)
ci = Job.new(
  started_at: '01-12-2013',
  ended_at: '01-06-2014',
  employment: :employee,
  position: :junior_software_developer,
  badge: 'code',
  top: true,
  applicant: applicant,
  address: company,
  order: 170
)
I18n.locale = :de
ci.title = 'Junior Software Developer'
ci.description = 'Entwurf und Umsetzung neuer ERP-Anwendungen;Wartung und Weiterentwicklung bestehender ERP-Anwendungen;Entwicklung von API-Schnittstellen zur Integration verteilter Systeme'
I18n.locale = :en
ci.title = 'Junior Software Developer'
ci.description = 'Design and implementation of new ERP applications;Maintenance and further development of existing ERP applications;Development of API interfaces for the integration of distributed systems'
ci.save
I18n.locale = :de
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Projektmanagement').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Prozessoptimierung').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Softwarequalität').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Code Reviews').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Backend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Usability').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby on Rails').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MVC').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'RSpec').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'REST').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Capybara').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Haml').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Bootstrap').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CoffeeScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ajax').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JSON').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sass').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'git').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GitHub').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Redmine').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Test Driven').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Agil').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'SQL').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sublime Text').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Mac OS').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Web Engineering').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GIMP').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Testing').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Kanban').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Google Tools').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'AMQP').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'RabbitMQ').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'XML').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Errbit').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Oracle').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Git Tower').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'DiffMerge').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'KVP').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Microservices').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Webservices').id, experience: :frequent)


######################################################################################################


ci = Highlight.new(
  started_at: '22-02-2007',
  ended_at: '01-08-2014',
  badge: 'crow',
  applicant: applicant,
  order: 171
)
I18n.locale = :de
ci.title = 'Halter mehrerer Wellensittiche'
I18n.locale = :en
ci.title = "Holder of several budgies"
ci.save


######################################################################################################


company = Address.create(
  name: 'deltacity.NET GmbH & Co. KG',
  street: 'Spatzenweg 2',
  zip: '48282',
  city: 'Emsdetten',
  website: Website.create(url: 'http://www.deltacity.net/')
)
ci = Job.new(
  started_at: '01-6-2014',
  ended_at: '01-09-2014',
  employment: :employee,
  position: :web_developer,
  badge: 'code',
  applicant: applicant,
  address: company,
  order: 180
)
I18n.locale = :de
ci.title = 'Web Developer'
ci.description = 'Entwurf und Umsetzung einer individuellen CMS-Lösung'
I18n.locale = :en
ci.title = 'Web Developer'
ci.description = 'Design and implementation of an individual CMS solution'
ci.save
I18n.locale = :de
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Projektmanagement').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Backend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby on Rails').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MVC').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CoffeeScript').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'git').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Redmine').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Agil').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sublime Text').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Mac OS').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Web Engineering').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'SourceTree').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MySQL').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'DiffMerge').id, experience: :regular)


######################################################################################################


address = Address.create(
  street: 'Weststr. 1',
  zip: '48565',
  city: 'Steinfurt'
)
ci = Highlight.new(
  started_at: '22-10-2014',
  ended_at: nil,
  badge: 'home',
  applicant: applicant,
  address: address,
  order: 190
)
I18n.locale = :de
ci.title = 'Umzug in eine größere Wohnung'
I18n.locale = :en
ci.title = 'Moving to a larger apartment'
ci.save


######################################################################################################


ci = Highlight.new(
  started_at: '01-04-2014',
  ended_at: nil,
  badge: 'dragon',
  applicant: applicant,
  order: 191
)
I18n.locale = :de
ci.title = 'Halter von 2 Kornnattern'
I18n.locale = :en
ci.title = "Holder of 2 corn snakes"
ci.save


######################################################################################################


address = Address.create(
  name: 'TV Borghorst 1884 e.V.',
  street: 'Winkelstraße 22',
  zip: '48565',
  city: 'Steinfurt',
  website: Website.create(url: 'http://www.tv-borghorst.de/')
)
ci = Highlight.new(
  started_at: '22-04-2010',
  ended_at: '22-07-2015',
  badge: 'hand-rock',
  applicant: applicant,
  address: address,
  order: 200
)
I18n.locale = :de
ci.title = 'Kung Fu Training'
I18n.locale = :en
ci.title = 'Kung Fu training'
ci.save


######################################################################################################


ci = Highlight.new(
  started_at: '30-07-2016',
  ended_at: '07-08-2016',
  badge: 'hiking',
  applicant: applicant,
  order: 201
)
I18n.locale = :de
ci.title = 'Hermannsweg erwandert'
ci.description = '8 Tage, 150 km, 2 Bundeländer, 5 Kreise, 1 kaputtes Knie, 1 kaputten Knöchel, 2 kleine Aufschürfungen, 1 riesige Blase und einen Haufen Glücksmomente'
I18n.locale = :en
ci.title = "Hermannsweg hiked - long-distance trail"
ci.description = '8 days, 150 km, 2 federal states, 1 broken knee, 1 broken ankle, 2 small abrasions, 1 huge bladder and a bunch of happy moments'
ci.save


######################################################################################################


company = Address.create(
  name: 'Fuchs Gewürze GmbH',
  street: 'Industriestraße 25',
  zip: '49201',
  city: 'Dissen a.T.W.',
  website: Website.create(url: 'http://www.fuchs.de/')
)
ci = Job.create(
  started_at: '01-10-2014',
  ended_at: '31-10-2016',
  employment: :employee,
  position: :software_developer,
  badge: 'code',
  top: true,
  applicant: applicant,
  address: company,
  order: 210
)
I18n.locale = :de
ci.title = 'Software Developer'
ci.description = 'Entwurf und Umsetzung neuer ERP-Anwendungen;Wartung und Weiterentwicklung bestehender ERP-Anwendungen;Entwicklung von API-Schnittstellen zur Integration verteilter Systeme'
I18n.locale = :en
ci.title = 'Software Developer'
ci.description = 'Design and implementation of new ERP applications;Maintenance and further development of existing ERP applications;Development of API interfaces for the integration of distributed systems'
ci.save
I18n.locale = :de
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Projektmanagement').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Prozessoptimierung').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Softwarequalität').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Code Reviews').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Backend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Usability').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ruby on Rails').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MVC').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'RSpec').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'REST').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Capybara').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Haml').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Bootstrap').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CoffeeScript').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'jQuery').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ajax').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JSON').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sass').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'git').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GitHub').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Redmine').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Test Driven').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Agil').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'SQL').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Atom').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Mac OS').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Web Engineering').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GIMP').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Testing').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Kanban').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Google Tools').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'AMQP').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'RabbitMQ').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'XML').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Errbit').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Oracle').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Git Tower').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'DiffMerge').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'KVP').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Microservices').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Webservices').id, experience: :frequent)


######################################################################################################


ci = Highlight.new(
  started_at: '16-10-2004',
  ended_at: '18-09-2018',
  badge: 'dog',
  applicant: applicant,
  order: 220
)
I18n.locale = :de
ci.title = 'Stolzes Herr­chen von Geoffrey'
I18n.locale = :en
ci.title = 'Proud dog daddy of Geoffrey'
ci.save


######################################################################################################


ci = Highlight.new(
  started_at: '29-07-2018',
  ended_at: '02-08-2018',
  badge: 'hiking',
  applicant: applicant,
  order: 221
)
I18n.locale = :de
ci.title = 'Eggeweg erwandert'
ci.description = '5 Tage, 100 km, keine Blessuren und einige unerwartete Bekanntschaften'
I18n.locale = :en
ci.title = "Eggeweg hiked - long-distance trail"
ci.description = '5 days, 100 km, no injuries and some unexpected acquaintances'
ci.save


######################################################################################################


ci = Highlight.new(
  started_at: '01-09-2018',
  ended_at: nil,
  badge: 'fish',
  applicant: applicant,
  order: 221
)
I18n.locale = :de
ci.title = 'Nano Cube mit Garnelen aufgestellt'
I18n.locale = :en
ci.title = "Set up a nano cube with shrimps"
ci.save


######################################################################################################


company = Address.create(
  name: 'InfluencerDB Tech GmbH & Co. KG',
  street: 'Im Mediapark 4D',
  zip: '50670',
  city: 'Köln',
  website: Website.create(url: 'https://influencerdb.com/')
)
ci = Job.new(
  started_at: '01-11-2016',
  ended_at: nil,
  title: 'Software Developer',
  description: 'Pflege und Weiterentwicklung der Influencer Marketing Platform',
  employment: :employee,
  position: :software_developer,
  badge: 'code',
  top: true,
  applicant: applicant,
  address: company,
  order: 230
)
I18n.locale = :de
ci.title = 'Software Developer'
ci.description = 'Wartung und Weiterentwicklung der Influencer Marketing Platform;Hauptverantwortlicher für das Frontend;Einführung von Vue'
I18n.locale = :en
ci.title = 'Software Developer'
ci.description = 'Maintenance and further development of the Influencer Marketing Platform;Main responsible for the frontend;Introduction of Vue'
ci.save
I18n.locale = :de
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Web Engineering').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Frontend Development').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Backend Development').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Softwarequalität').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Usability').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Mobile Optimierung').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Testing').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Test Driven').id, experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Code Reviews').id, started_at: '01-09-2018', ended_at: "30-11-2018", experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'MVC').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'KVP').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Agil').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Kanban').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Scrum').id, started_at: '01-09-2018', ended_at: "30-11-2018", experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Lean Startup').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Homeoffice').id, started_at: '01-05-2017', ended_at: "30-11-2018", experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Python').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Django').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'HTML5').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'CSS3').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Sass').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Bootstrap').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Bulma').id, started_at: '01-09-2018', ended_at: "30-11-2018", experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Tailwind CSS').id, started_at: '01-11-2018', ended_at: "30-11-2018", experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JavaScript').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Vue').id, started_at: '01-09-2018', ended_at: "30-11-2018", experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Storybook').id, started_at: '01-09-2018', ended_at: "30-11-2018", experience: :rare)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ajax').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'JSON').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'webpack').id, started_at: '01-09-2018', ended_at: "30-11-2018", experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Ubuntu').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'git').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Bitbucket').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GitLab').id, started_at: '01-07-2018', ended_at: "30-11-2018", experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GitHub').id, experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GitKraken').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'PyCharm').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Visual Studio Code').id, started_at: '01-10-2018', ended_at: "30-11-2018", experience: :frequent)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Trello').id, experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'Jira').id, started_at: '01-10-2018', ended_at: "30-11-2018", experience: :regular)
ChronicleItemSkill.create(chronicle_item_id: ci.id, skill_id: Skill.find_by(title: 'GIMP').id, experience: :rare)



######################################################################################################
# interests
######################################################################################################

interest = Interest.new(
  information_type: :personal,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
interest.title = 'Brettspiele'
I18n.locale = :en
interest.title = 'Board games'
interest.save

interest = Interest.new(
  information_type: :personal,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
interest.title = 'Computerspiele'
I18n.locale = :en
interest.title = 'Computer games'
interest.save

interest = Interest.new(
  information_type: :personal,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
interest.title = 'Outdoor Aktivitäten'
I18n.locale = :en
interest.title = 'Outdoor activities'
interest.save

interest = Interest.new(
  information_type: :personal,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
interest.title = 'Reisen'
I18n.locale = :en
interest.title = 'Traveling'
interest.save

interest = Interest.new(
  information_type: :personal,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
interest.title = 'Fitness'
I18n.locale = :en
interest.title = 'Fitness'
interest.save

interest = Interest.new(
  information_type: :personal,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
interest.title = 'Popkultur'
I18n.locale = :en
interest.title = 'Pop culture'
interest.save

interest = Interest.new(
  information_type: :personal,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
interest.title = 'Aquascaping'
I18n.locale = :en
interest.title = 'Aquascaping'
interest.save

interest = Interest.new(
  information_type: :personal,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
interest.title = 'Welt verbessern'
I18n.locale = :en
interest.title = 'Improve the world'
interest.save

interest = Interest.new(
  information_type: :professional,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
interest.title = 'Frontend Technologien'
I18n.locale = :en
interest.title = 'Frontend technologies'
interest.save

interest = Interest.new(
  information_type: :professional,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
interest.title = 'Usability'
I18n.locale = :en
interest.title = 'Usability'
interest.save

interest = Interest.new(
  information_type: :professional,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
interest.title = 'Gamification'
I18n.locale = :en
interest.title = 'Gamification'
interest.save

interest = Interest.new(
  information_type: :professional,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
interest.title = 'Softwarequalität'
I18n.locale = :en
interest.title = 'Software quality'
interest.save

interest = Interest.new(
  information_type: :professional,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
interest.title = 'Digitale Prozesse'
I18n.locale = :en
interest.title = 'Digital processes'
interest.save

interest = Interest.new(
  information_type: :professional,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
interest.title = 'Neue Dinge lernen'
I18n.locale = :en
interest.title = 'Learning new things'
interest.save

interest = Interest.new(
  information_type: :professional,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
interest.title = 'Welt verbessern'
I18n.locale = :en
interest.title = 'Improve the world'
interest.save



######################################################################################################
# faqs
######################################################################################################

faq = Faq.new(
  information_type: :personal,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
faq.title = 'Was ist dein größter persönliche Wunsch?'
faq.description = 'Einen neuen Hund.'
I18n.locale = :en
faq.title = "What's your biggest personal wish?"
faq.description = 'A new dog.'
faq.save

faq = Faq.new(
  information_type: :professional,
  informable_id: applicant.id,
  informable_type: applicant.model_name
)
I18n.locale = :de
faq.title = 'Was ist dein größter berufliche Wunsch?'
faq.description = 'Für eine Firma zu arbeiten auf die ich stolz bin.'
I18n.locale = :en
faq.title = "What's your biggest professional wish?"
faq.description = "To work for a company that I'm proud of."
faq.save

p "end"
