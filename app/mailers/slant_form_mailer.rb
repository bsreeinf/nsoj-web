class SlantFormMailer < ActionMailer::Base
	def slant_form_created(college_name,phone,rb_name1,rb_phone1,rb_name2,rb_phone2,rb_name3,rb_phone3,rb_name4,rb_phone4,rb_name5,rb_phone5,rb_name6,rb_phone6,bn_name1,bn_phone1,bn_name2,bn_phone2,bn_name3,bn_phone3,bn_name4,bn_phone4,fc_name1,fc_phone1,fc_name2,fc_phone2,fc_name3,fc_phone3,tt_name1,tt_phone1,tt_name2,tt_phone2,tt_name3,tt_phone3,es_name,es_phone,pj_name,pj_phone,do_name,do_phone)

@college_name =college_name
@phone        =phone
@rb_name1     =rb_name1
@rb_phone1    =rb_phone1
@rb_name2     =rb_name2
@rb_phone2    =rb_phone2
@rb_name3     =rb_name3
@rb_phone3    =rb_phone3
@rb_name4     =rb_name4
@rb_phone4    =rb_phone4
@rb_name5     =rb_name5
@rb_phone5    =rb_phone5
@rb_name6     =rb_name6
@rb_phone6    =rb_phone6
@bn_name1     =bn_name1
@bn_phone1    =bn_phone1
@bn_name2     =bn_name2
@bn_phone2    =bn_phone2
@bn_name3     =bn_name3
@bn_phone3    =bn_phone3
@bn_name4     =bn_name4
@bn_phone4    =bn_phone4
@fc_name1     =fc_name1
@fc_phone1    =fc_phone1
@fc_name2     =fc_name2
@fc_phone2    =fc_phone2
@fc_name3     =fc_name3
@fc_phone3    =fc_phone3
@tt_name1     =tt_name1
@tt_phone1    =tt_phone1
@tt_name2     =tt_name2
@tt_phone2    =tt_phone2
@tt_name3     =tt_name3
@tt_phone3    =tt_phone3
@es_name      =es_name
@es_phone     =es_phone
@pj_name      =pj_name
@pj_phone     =pj_phone
@do_name      =do_name
@do_phone     =do_phone
		
		
		mail(
				to: ENV[INFO_EMAIL],
				from: ENV[INFO_EMAIL],
				subject: "New Application form",
				
			)
	end
end