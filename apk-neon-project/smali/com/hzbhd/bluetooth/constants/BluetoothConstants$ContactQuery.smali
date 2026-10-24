.class public Lcom/hzbhd/bluetooth/constants/BluetoothConstants$ContactQuery;
.super Ljava/lang/Object;
.source "BluetoothConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/constants/BluetoothConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactQuery"
.end annotation


# static fields
.field public static final CONTACT_CONTACT_STATUS:I = 0x3

.field public static final CONTACT_DISPLAY_NAME:I = 0x1

.field public static final CONTACT_DISPLAY_NAME_ALTERNATIVE:I = 0x9

.field public static final CONTACT_ID:I = 0x0

.field public static final CONTACT_IS_USER_PROFILE:I = 0x7

.field public static final CONTACT_LOOKUP_KEY:I = 0x6

.field public static final CONTACT_PHOTO_ID:I = 0x4

.field public static final CONTACT_PHOTO_URI:I = 0x5

.field public static final CONTACT_PRESENCE_STATUS:I = 0x2

.field public static final CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

.field public static final CONTACT_STARRED:I = 0x8

.field public static final FILTER_PROJECTION_PRIMARY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "_id"

    const-string v1, "display_name"

    const-string v2, "contact_presence"

    const-string v3, "contact_status"

    const-string v4, "photo_id"

    const-string v5, "photo_thumb_uri"

    const-string v6, "lookup"

    const-string v7, "is_user_profile"

    const-string/jumbo v8, "starred"

    const-string v9, "display_name_alt"

    .line 28
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/bluetooth/constants/BluetoothConstants$ContactQuery;->CONTACT_PROJECTION_PRIMARY:[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "display_name"

    const-string v3, "contact_presence"

    const-string v4, "contact_status"

    const-string v5, "photo_id"

    const-string v6, "photo_thumb_uri"

    const-string v7, "lookup"

    const-string v8, "is_user_profile"

    const-string/jumbo v9, "starred"

    const-string v10, "display_name_alt"

    .line 41
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/bluetooth/constants/BluetoothConstants$ContactQuery;->FILTER_PROJECTION_PRIMARY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
