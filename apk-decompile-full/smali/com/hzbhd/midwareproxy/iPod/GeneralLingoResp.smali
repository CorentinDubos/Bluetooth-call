.class public Lcom/hzbhd/midwareproxy/iPod/GeneralLingoResp;
.super Ljava/lang/Object;
.source "GeneralLingoResp.java"


# static fields
.field public static final ERR_ACCESSORY_NOT_GROUNDED:B = 0x12t

.field public static final ERR_ACCESSOR_POWER_MODE_REQ_FAILED:B = 0x9t

.field public static final ERR_APPLE_DEV_OUT_OF_RES:B = 0x3t

.field public static final ERR_BAD_AUTHENTICATION_VER:B = 0x8t

.field public static final ERR_BAD_PARAM:B = 0x4t

.field public static final ERR_CERTIFICATE_INVALID:B = 0xat

.field public static final ERR_CERTIFICATE_PERMISSIONS_INVALID:B = 0xbt

.field public static final ERR_CMD_UNAVAILABLE_IN_THIS_APPLE_DEV_MODE:B = 0x10t

.field public static final ERR_COMMAND_FAILED:B = 0x2t

.field public static final ERR_DIRECTORY_NOT_EMPTY:B = 0xet

.field public static final ERR_ENTER_IPOD_OUT_MODE_WITH_INCOMPATIBLE_VIDEO_SETTINGS:B = 0x18t

.field public static final ERR_FILE_IS_IN_USE:B = 0xct

.field public static final ERR_INVALID_FILE_HANDLE:B = 0xdt

.field public static final ERR_LINGO_BUSY:B = 0x14t

.field public static final ERR_MAX_ACCESSORY_CONN_REACHED:B = 0x15t

.field public static final ERR_NOT_AUTHENTICATED:B = 0x7t

.field public static final ERR_NOT_GROUNDED_OR_INVALID_ACCESSORY_IDENTIFY_REGISTSTOR:B = 0x11t

.field public static final ERR_OP_TIME_OUT:B = 0xft

.field public static final ERR_SESSION_WRITE_FAILURE:B = 0x17t

.field public static final ERR_UNKNOWN_DB_CATEGORY:B = 0x1t

.field public static final ERR_UNKNOWN_ID:B = 0x5t

.field public static final STATUS_COMMAND_PENDING:B = 0x6t

.field public static final STATUS_SECTION_RECEIVED_SUCCESSFULLY:B = 0x13t

.field public static final STATUS_SUCCESS:B


# instance fields
.field private mACKStatus:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getACKStatus()B
    .locals 1

    .line 65
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/GeneralLingoResp;->mACKStatus:B

    return v0
.end method

.method protected setACKStatus(B)V
    .locals 0

    .line 61
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/GeneralLingoResp;->mACKStatus:B

    return-void
.end method
