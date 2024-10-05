// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gif_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GifState extends GifState {
  @override
  final int page;
  @override
  final List<GifModel> gifs;
  @override
  final String error;
  @override
  final String message;
  @override
  final bool isLoading;

  factory _$GifState([void Function(GifStateBuilder)? updates]) =>
      (new GifStateBuilder()..update(updates))._build();

  _$GifState._(
      {required this.page,
      required this.gifs,
      required this.error,
      required this.message,
      required this.isLoading})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(page, r'GifState', 'page');
    BuiltValueNullFieldError.checkNotNull(gifs, r'GifState', 'gifs');
    BuiltValueNullFieldError.checkNotNull(error, r'GifState', 'error');
    BuiltValueNullFieldError.checkNotNull(message, r'GifState', 'message');
    BuiltValueNullFieldError.checkNotNull(isLoading, r'GifState', 'isLoading');
  }

  @override
  GifState rebuild(void Function(GifStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GifStateBuilder toBuilder() => new GifStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GifState &&
        page == other.page &&
        gifs == other.gifs &&
        error == other.error &&
        message == other.message &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, gifs.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GifState')
          ..add('page', page)
          ..add('gifs', gifs)
          ..add('error', error)
          ..add('message', message)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class GifStateBuilder implements Builder<GifState, GifStateBuilder> {
  _$GifState? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  List<GifModel>? _gifs;
  List<GifModel>? get gifs => _$this._gifs;
  set gifs(List<GifModel>? gifs) => _$this._gifs = gifs;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  GifStateBuilder();

  GifStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _gifs = $v.gifs;
      _error = $v.error;
      _message = $v.message;
      _isLoading = $v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GifState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GifState;
  }

  @override
  void update(void Function(GifStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GifState build() => _build();

  _$GifState _build() {
    final _$result = _$v ??
        new _$GifState._(
            page: BuiltValueNullFieldError.checkNotNull(
                page, r'GifState', 'page'),
            gifs: BuiltValueNullFieldError.checkNotNull(
                gifs, r'GifState', 'gifs'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'GifState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'GifState', 'message'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'GifState', 'isLoading'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
