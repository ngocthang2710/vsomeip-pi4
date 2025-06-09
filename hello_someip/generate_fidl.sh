#!/bin/bash

set -e  # dừng script nếu có lỗi

# Thư mục gốc (chứa script)
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"

# Đường dẫn tới file .fidl và thư mục output sinh code
FIDL_DIR="$BASE_DIR/common"
FIDL_FILE="HelloWorld.fidl"
GEN_DIR="$BASE_DIR/service/gen"

# Kiểm tra file fidl có tồn tại không
if [ ! -f "$FIDL_DIR/$FIDL_FILE" ]; then
    echo "❌ Không tìm thấy $FIDL_FILE trong $FIDL_DIR"
    exit 1
fi

# Tạo thư mục output nếu chưa có
mkdir -p "$GEN_DIR"

# Đường dẫn đến các công cụ generator
COMMONAPI_GEN="$BASE_DIR/extern/capicxx-core-tools/bin/commonapi-generator"
COMMONAPI_SOMEIP_GEN="$BASE_DIR/extern/capicxx-someip-tools/bin/commonapi-someip-generator"

# Kiểm tra file công cụ có tồn tại và thực thi được không
if [ ! -x "$COMMONAPI_GEN" ]; then
    echo "❌ Không tìm thấy hoặc không thể thực thi công cụ $COMMONAPI_GEN"
    exit 1
fi

if [ ! -x "$COMMONAPI_SOMEIP_GEN" ]; then
    echo "❌ Không tìm thấy hoặc không thể thực thi công cụ $COMMONAPI_SOMEIP_GEN"
    exit 1
fi

echo "🚀 Đang chạy commonapi-generator..."
"$COMMONAPI_GEN" -sk "$FID_
