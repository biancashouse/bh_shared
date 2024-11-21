library bh_shared;

import 'bh_shared.dart';

export 'src/debouncer/debouncer.dart';
export 'src/widget/error.dart';
export 'src/widget/blink.dart';
export 'src/widget/constant_scroll_behavior.dart';

// export mixins
export 'src/gotits_mixin.dart';
export 'src/local_storage_mixin.dart';
export 'src/system_mixin.dart';
export 'src//canvas/canvas_mixin.dart';
export 'src/widget/widget_helper_mixin.dart';

// client apps will only access this functionality thru this global instance
BaseMixins base = BaseMixins.instance;

class BaseMixins
    with
        SystemMixin,
        WidgetHelperMixin,
        GotitsMixin,
        LocalStorageMixin,
        CanvasMixin {
  BaseMixins._internal() // Private constructor
  {
    logi('BaseGlobal._internal()');
  }

  static final BaseMixins _instance = BaseMixins._internal();

  static BaseMixins get instance {
    return _instance;
  }
}
