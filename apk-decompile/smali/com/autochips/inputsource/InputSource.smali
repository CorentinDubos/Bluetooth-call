.class public Lcom/autochips/inputsource/InputSource;
.super Ljava/lang/Object;
.source "InputSource.java"


# static fields
.field public static final CBM_CONTROL_NONE:I = 0x0

.field public static final CBM_CONTROL_RESUME_FRONT_REAR:I = 0x5

.field public static final CBM_CONTROL_STARTED:I = 0x2

.field public static final CBM_CONTROL_STOPED:I = 0x1

.field public static final CBM_CONTROL_STOP_FRONT:I = 0x3

.field public static final CBM_CONTROL_STOP_REAR:I = 0x4

.field public static final DEST_TYPE_FRONT:I = 0x1

.field public static final DEST_TYPE_FRONT_REAR:I = 0x3

.field public static final DEST_TYPE_NONE:I = 0x0

.field public static final DEST_TYPE_REAR:I = 0x2

.field private static final ERR_BASE:I = -0x1770

.field public static final ERR_CBM_NOT_ALLOWED:I = -0x1776

.field public static final ERR_FAILED:I = -0x1774

.field public static final ERR_INVALID_ARG:I = -0x1770

.field public static final ERR_INVALID_PORT:I = -0x1771

.field public static final ERR_NO_MEMORY:I = -0x1772

.field public static final ERR_NO_RESOURCE:I = -0x1773

.field public static final ERR_OK:I = -0x1775

.field public static final SOURCE_TYPE_AVIN:I = 0x1

.field public static final SOURCE_TYPE_DIGITALIN:I = 0x2

.field public static final SOURCE_TYPE_DIG_AUD:I = 0x6

.field public static final SOURCE_TYPE_HDMI:I = 0x3

.field public static final SOURCE_TYPE_NONE:I = 0x0

.field public static final SOURCE_TYPE_RDS_AUD:I = 0x7

.field public static final SOURCE_TYPE_VGA:I = 0x5

.field public static final SOURCE_TYPE_YPBPR:I = 0x4

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_RESUME_FRONT_REAR:I = 0x5

.field public static final STATUS_STARTED:I = 0x2

.field public static final STATUS_STOPED:I = 0x1

.field public static final STATUS_STOP_FRONT:I = 0x3

.field public static final STATUS_STOP_REAR:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
