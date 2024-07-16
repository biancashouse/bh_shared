library bh_shared;

import 'package:flutter/foundation.dart';
import 'bh_shared.dart';

export 'src/widget/blink.dart';
export 'src/widget/constant_scroll_behavior.dart';
export 'src/widget/color_values.dart';
export 'src/widget/canvas/canvas_helper.dart';

// export mixins
export 'src/home_page_provider/home_page_provider.dart';
export 'src/local_storage/local_storage_mixin.dart';
export 'src/routing_config_provider/routing_config_provider.dart';
export 'src/system_mixin.dart';
export 'src/widget/widget_helper_mixin.dart';


// client apps will only access this functionality thru this global instance
BaseMixins base = BaseMixins.instance;

class BaseMixins with SystemMixin, WidgetHelperMixin, LocalStorageMixin {

  BaseMixins._internal() // Private constructor
  {
    debugPrint('BaseGlobal._internal()');
  }

  static final BaseMixins _instance = BaseMixins._internal();

  static BaseMixins get instance {
    return _instance;
  }

}

