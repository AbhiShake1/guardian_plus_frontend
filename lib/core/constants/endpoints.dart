const kbaseUrl = 'https://guardian-plus.herokuapp.com/';
const _kAuthUrl = kbaseUrl + 'api=auth/';
const _kAssessmentUrl = kbaseUrl + 'api=assessments/';
const _kNoticeUrl = kbaseUrl + 'api=notice/';
const _kParentUrl = kbaseUrl + 'api=parent/';
const _kRoutineUrl = kbaseUrl + 'api=routine/';
const _kFeedbackUrl = kbaseUrl + 'api=feedback/';

const kUrlLogin = _kAuthUrl + 'signin/';
const kUrlGetUser = _kAuthUrl + 'current_user/';
const kUrlLogout = _kAuthUrl + 'signout/';
const kUrlUpdatePassword = _kAuthUrl + 'update_password/';
const kUrlAllAssessments = _kAssessmentUrl + 'get_all/';
const kUrlAllNotices = _kNoticeUrl + 'get_all/';
const kUrlGetChildren = _kParentUrl + 'get_children/';
const kUrlGetChildSubjects = _kParentUrl + 'get_child_subjects/';
const kUrlGetChildProgress = _kParentUrl + 'get_child_progress/';
const kUrlRoutine = _kRoutineUrl + 'get_all/';
const kUrlPostFeedback = _kFeedbackUrl + 'post/';
