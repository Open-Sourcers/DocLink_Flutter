class EndPoints {
  static const baseUrl = 'https://doclink.runasp.net';
  // # Authentication Endpoints
  static const register = '/api/Account/Register';
  static const login = '/api/Account/Login';
  static const forgetPassword = '/api/Account/forget-password';
  static const verifyAccount = '/api/Account/Confirm-Email';
  static const resetPassword = '/api/Account/Reset-Password';
  // # Doctors Endpoints
  static const createDocAccount = '/api/Doctor/CreateDoctorAccount';
  static const updateDoctor = '/api/Doctor/UpdateDoctor';
  static const deleteDoctor = '/api/Doctor/DeleteDoctor/'; // you need id
  static const getAllDoctors = '/api/Doctor/GetDoctorsWithSpec';
  static const getDocLanguages = '/api/Doctor/GetDoctorLanguages';
  static const getDocQualifications = '/api/Doctor/GetDoctorQualifications';
  static const getDocDetails = '/api/Doctor/GetDoctorDetails/'; // you need id
  static const getSpecialities = '/api/Doctor/GetSpecialties';
}
