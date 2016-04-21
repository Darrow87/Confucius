User.create(user_name: 'testuser', email: 'testemail', password: 'pw', profile: 'testprofile')

User.create(user_name: 'testuser2', email: 'testemail2', password: 'pw', profile: 'testprofile2')

User.create(user_name: 'testuser3', email: 'testemail3', password: 'pw', profile: 'testprofile3')

Answer.create(content: 'testanswer', user_id: '1', question_id: '1')

Answer.create(content: 'testanswer1', user_id: '2', question_id: '2')

Answer.create(content: 'testanswer2', user_id: '3', question_id: '3')

Question.create(title: 'testquestion', content: 'testcontent', user_id: '1')

Question.create(title: 'testquestion1', content: 'testcontent1', user_id: '2')

Question.create(title: 'testquestion2', content: 'testcontent2', user_id: '3')

Comment.create(content: 'testcontent', commentable_id: '1',commentable_type: 'Question', user_id: '1', )
Comment.create(content: 'testcontent2', commentable_id: '1', commentable_type: 'Question', user_id: '2', )
Comment.create(content: 'testcontent3', commentable_id: '1',commentable_type: 'Question', user_id: '3', )
Comment.create(content: 'testcontent4', commentable_id: '1', commentable_type: 'Answer', user_id: '1', )
Comment.create(content: 'testcontent5', commentable_id: '1', commentable_type: 'Answer', user_id: '2', )
Comment.create(content: 'testcontent6', commentable_id: '1', commentable_type: 'Answer', user_id: '3', )

Tag.create(name: 'testtag')
Tag.create(name: 'testtag2')
Tag.create(name: 'testtag3')

Vote.create(voteable_id: '1', voteable_type: 'Answer', user_id: '1', value: 1)
Vote.create(voteable_id: '1', voteable_type: 'Answer', user_id: '2', value: 1)
Vote.create(voteable_id: '1', voteable_type: 'Answer', user_id: '3', value: 1)
Vote.create(voteable_id: '1', voteable_type: 'Question', user_id: '1', value: 1)
Vote.create(voteable_id: '1', voteable_type: 'Question', user_id: '2', value: 1)
Vote.create(voteable_id: '1', voteable_type: 'Question', user_id: '3', value: 1)

Vote.create(voteable_id: '2', voteable_type: 'Answer', user_id: '1', value: 1)
Vote.create(voteable_id: '2', voteable_type: 'Answer', user_id: '2', value: 1)
Vote.create(voteable_id: '2', voteable_type: 'Answer', user_id: '3', value: 1)
Vote.create(voteable_id: '2', voteable_type: 'Question', user_id: '1', value: 1)
Vote.create(voteable_id: '2', voteable_type: 'Question', user_id: '2', value: 1)
Vote.create(voteable_id: '2', voteable_type: 'Question', user_id: '3', value: 1)

Vote.create(voteable_id: '3', voteable_type: 'Answer', user_id: '1', value: 1)
Vote.create(voteable_id: '3', voteable_type: 'Answer', user_id: '2', value: 1)
Vote.create(voteable_id: '3', voteable_type: 'Answer', user_id: '3', value: 1)
Vote.create(voteable_id: '3', voteable_type: 'Question', user_id: '1', value: 1)
Vote.create(voteable_id: '3', voteable_type: 'Question', user_id: '2', value: 1)
Vote.create(voteable_id: '3', voteable_type: 'Question', user_id: '3', value: 1)

QuestionTag.create(question_id: '1', tag_id: '1')
QuestionTag.create(question_id: '1', tag_id: '2')
QuestionTag.create(question_id: '1', tag_id: '3')
QuestionTag.create(question_id: '2', tag_id: '1')
QuestionTag.create(question_id: '2', tag_id: '2')
QuestionTag.create(question_id: '2', tag_id: '3')
QuestionTag.create(question_id: '3', tag_id: '1')
QuestionTag.create(question_id: '3', tag_id: '2')
QuestionTag.create(question_id: '3', tag_id: '3')






