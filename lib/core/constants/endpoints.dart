const kbaseUrl = 'https://guardian-plus.herokuapp.com/';
const _kAuthUrl = kbaseUrl + 'api=auth/';
const _kAssessmentUrl = kbaseUrl + 'api=assessments/';
const _kParentUrl = kbaseUrl + 'api=parent/';

const kUrlLogin = _kAuthUrl + 'signin/';
const kUrlGetUser = _kAuthUrl + 'current_user/';
const kUrlLogout = _kAuthUrl + 'signout/';
const kUrlUpdatePassword = _kAuthUrl + 'update_password/';
const kUrlAllAssessments = _kAssessmentUrl + 'get_all/';
const kUrlGetChildren = _kParentUrl + 'get_children/';
const kUrlGetChildSubjects = _kParentUrl + 'get_child_subjects/';
