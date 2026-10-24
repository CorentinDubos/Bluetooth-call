.class public interface abstract Lcom/hzbhd/midware/constant/BluetoothConstantsDef;
.super Ljava/lang/Object;
.source "BluetoothConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BluetoothUpdateListener;,
        Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;,
        Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;,
        Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;,
        Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_RESULT;,
        Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_CALL_METHOD;,
        Lcom/hzbhd/midware/constant/BluetoothConstantsDef$AUDIO_TRUANSFER_STATE;,
        Lcom/hzbhd/midware/constant/BluetoothConstantsDef$MIC_MUTE_STATE;,
        Lcom/hzbhd/midware/constant/BluetoothConstantsDef$A2DP_PLAY_STATE;,
        Lcom/hzbhd/midware/constant/BluetoothConstantsDef$THREE_WAY_CALL_ACTION;,
        Lcom/hzbhd/midware/constant/BluetoothConstantsDef$HFP_ACTION;,
        Lcom/hzbhd/midware/constant/BluetoothConstantsDef$CONNECT_PROFILE;,
        Lcom/hzbhd/midware/constant/BluetoothConstantsDef$A2DP_ACTION;,
        Lcom/hzbhd/midware/constant/BluetoothConstantsDef$BLUETOOTH_SERVICE_MSG;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_CALL_ACTION:Ljava/lang/String; = "com.hzbhd.bluetooth.call.action"

.field public static final BLUETOOTH_IMPORT_VCARD_ACTION:Ljava/lang/String; = "com.hzbhd.bluetooth.import.vcard.action"

.field public static final CONTACT_CONTACT_STATUS:I = 0x2

.field public static final CONTACT_DISPLAY_NAME:I = 0x1

.field public static final CONTACT_DISPLAY_NAME_ALTERNATIVE:I = 0x5

.field public static final CONTACT_ID:I = 0x0

.field public static final CONTACT_LOOKUP_KEY:I = 0x3

.field public static final CONTACT_STARRED:I = 0x4

.field public static final DATA_SET:I = 0x0

.field public static final FILTER_PROJECTION_ACCOUNT:[Ljava/lang/String;

.field public static final FILTER_PROJECTION_PRIMARY:[Ljava/lang/String;

.field public static final FILTER_PROJECTION_PRIMARY_PHONE:[Ljava/lang/String;

.field public static final MESSAGE_DEVICE_NAME:I = 0x4

.field public static final MESSAGE_READ:I = 0x2

.field public static final MESSAGE_STATE_CHANGE:I = 0x1

.field public static final MESSAGE_TOAST:I = 0x5

.field public static final MESSAGE_WRITE:I = 0x3

.field public static final PHONE_CONTACT_DISPLAY_NAME:I = 0x1

.field public static final PHONE_RAW_CONTACT_ID:I = 0x0

.field public static final SNIPPET_ARGS:Ljava/lang/String; = "\u0001,\u0001,\u2026,5"

.field public static final SNIPPET_ELLIPSIS:Ljava/lang/String; = "\u2026"

.field public static final SNIPPET_END_MATCH:C = '\u0001'

.field public static final SNIPPET_MAX_TOKENS:I = 0x5

.field public static final SNIPPET_START_MATCH:C = '\u0001'


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "_id"

    const-string v1, "display_name"

    const-string v2, "contact_status"

    const-string v3, "lookup"

    const-string/jumbo v4, "starred"

    const-string v5, "display_name_alt"

    .line 29
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef;->FILTER_PROJECTION_PRIMARY:[Ljava/lang/String;

    const-string v0, "data_set"

    .line 46
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef;->FILTER_PROJECTION_ACCOUNT:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "display_name"

    .line 53
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef;->FILTER_PROJECTION_PRIMARY_PHONE:[Ljava/lang/String;

    return-void
.end method
