import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'new_home_widget.dart' show NewHomeWidget;
import 'package:flutter/material.dart';

class NewHomeModel extends FlutterFlowModel<NewHomeWidget> {
  ///  Local state fields for this page.

  bool showDob = false;

  String typeOfCourse = '1 Year Course';

  String courseChoice = ' ';

  bool notUploadFiles = false;

  bool filesUpload1 = false;

  bool filesUpload2 = false;

  String studentNo = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  String? _fullNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for idNumber widget.
  FocusNode? idNumberFocusNode;
  TextEditingController? idNumberTextController;
  String? Function(BuildContext, String?)? idNumberTextControllerValidator;
  String? _idNumberTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  String? _phoneNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  // State field(s) for race widget.
  String? raceValue;
  FormFieldController<String>? raceValueController;
  // State field(s) for alternatePhoneNumber widget.
  FocusNode? alternatePhoneNumberFocusNode;
  TextEditingController? alternatePhoneNumberTextController;
  String? Function(BuildContext, String?)?
      alternatePhoneNumberTextControllerValidator;
  String? _alternatePhoneNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for addressLineOne widget.
  FocusNode? addressLineOneFocusNode;
  TextEditingController? addressLineOneTextController;
  String? Function(BuildContext, String?)?
      addressLineOneTextControllerValidator;
  String? _addressLineOneTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for addressLineTwo widget.
  FocusNode? addressLineTwoFocusNode;
  TextEditingController? addressLineTwoTextController;
  String? Function(BuildContext, String?)?
      addressLineTwoTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  String? _cityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Province widget.
  FocusNode? provinceFocusNode;
  TextEditingController? provinceTextController;
  String? Function(BuildContext, String?)? provinceTextControllerValidator;
  String? _provinceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for campus widget.
  String? campusValue;
  FormFieldController<String>? campusValueController;
  // State field(s) for courseType widget.
  String? courseTypeValue;
  FormFieldController<String>? courseTypeValueController;
  // State field(s) for oneYear widget.
  String? oneYearValue;
  FormFieldController<String>? oneYearValueController;
  // State field(s) for shortCourses widget.
  String? shortCoursesValue;
  FormFieldController<String>? shortCoursesValueController;
  // State field(s) for skillsDev widget.
  String? skillsDevValue;
  FormFieldController<String>? skillsDevValueController;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
    idNumberTextControllerValidator = _idNumberTextControllerValidator;
    phoneNumberTextControllerValidator = _phoneNumberTextControllerValidator;
    alternatePhoneNumberTextControllerValidator =
        _alternatePhoneNumberTextControllerValidator;
    addressLineOneTextControllerValidator =
        _addressLineOneTextControllerValidator;
    cityTextControllerValidator = _cityTextControllerValidator;
    provinceTextControllerValidator = _provinceTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    idNumberFocusNode?.dispose();
    idNumberTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    alternatePhoneNumberFocusNode?.dispose();
    alternatePhoneNumberTextController?.dispose();

    addressLineOneFocusNode?.dispose();
    addressLineOneTextController?.dispose();

    addressLineTwoFocusNode?.dispose();
    addressLineTwoTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    provinceFocusNode?.dispose();
    provinceTextController?.dispose();
  }
}
