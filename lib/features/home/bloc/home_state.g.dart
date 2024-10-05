// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeState extends HomeState {
  @override
  final int page;
  @override
  final String error;
  @override
  final String message;

  factory _$HomeState([void Function(HomeStateBuilder)? updates]) =>
      (new HomeStateBuilder()..update(updates))._build();

  _$HomeState._(
      {required this.page, required this.error, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(page, r'HomeState', 'page');
    BuiltValueNullFieldError.checkNotNull(error, r'HomeState', 'error');
    BuiltValueNullFieldError.checkNotNull(message, r'HomeState', 'message');
  }

  @override
  HomeState rebuild(void Function(HomeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeStateBuilder toBuilder() => new HomeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeState &&
        page == other.page &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HomeState')
          ..add('page', page)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class HomeStateBuilder implements Builder<HomeState, HomeStateBuilder> {
  _$HomeState? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  HomeStateBuilder();

  HomeStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeState;
  }

  @override
  void update(void Function(HomeStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HomeState build() => _build();

  _$HomeState _build() {
    final _$result = _$v ??
        new _$HomeState._(
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'HomeState', 'page'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'HomeState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'HomeState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
