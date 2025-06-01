mixin ValidatorMixin {
  String? emailValidator(String? email) {
    if (email != null && email != '') {
      var regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
      ).hasMatch(email);
      if (regex) {
        return null;
      } else {
        return 'Email tidak valid!';
      }
    } else {
      return 'Email harus diisi!';
    }
  }

  String? phoneValidator(String field, String? value) {
    if (value != null && value.isNotEmpty) {
      if (value.startsWith('0')) {
        return '$field tidak boleh mengandung 0 diawal!';
      }
      final regex = RegExp(r'^[1-9][0-9]+$').hasMatch(value);
      if (regex) {
        return null;
      } else {
        return '$field harus valid!';
      }
    } else {
      return '$field  harus diisi!';
    }
  }

  String? pwValidator(String? password) {
    if (password != null && password != '') {
      return null;
    } else {
      return 'Password harus diisi!';
    }
  }

  String? pwStrongValidation(String password, bool strong) {
    if (password != '') {
      if (strong) {
        return null;
      } else {
        return 'Password tidak memenuhi syarat';
      }
    } else {
      return 'Password harus diisi!';
    }
  }

  String? pwConfirmValidator(String password, String confirm) {
    if (confirm == '') {
      return 'Konfirmasi Password harus diisi!';
    } else {
      if (confirm == password) {
        return null;
      } else {
        return 'Konfirmasi Password tidak sesuai!';
      }
    }
  }

  String? emptyValidator(String field, String? value) {
    if (value != null && value.isNotEmpty) {
      return null;
    } else {
      return '$field harus diisi!';
    }
  }

  String? nikValidator(String value) {
    if (value.isNotEmpty) {
      if (value.length == 16) {
        return null;
      } else {
        return 'NIK harus berisi angka 16 digit';
      }
    } else {
      return 'NIK harus diisi!';
    }
  }

  String? nisnValidator(String value) {
    if (value.isNotEmpty) {
      if (value.length == 10) {
        return null;
      } else {
        return 'NISN harus berisi angka 10 digit';
      }
    } else {
      return 'NISN harus diisi!';
    }
  }

  String? paymentValidator(String value, double money, double total) {
    if (value.isNotEmpty) {
      if (money < total) {
        return 'Uang yang diMasukkan tidak cukup';
      } else {
        return null;
      }
    } else {
      return 'Anda belum meMasukkan uang';
    }
  }

  String? suggestionValidator(String field, String? value) {
    if (value != null && value.isNotEmpty) {
      if (value.length < 20) {
        return 'Saran minimal 20 karakter!';
      }
      return null;
    } else {
      return '$field harus diisi!';
    }
  }
}
